require 'rails_helper'
require 'ffaker'

describe "Listing articles" do
  let!(:article) { create :article }
  scenario "someone views the articles index" do
    visit articles_path
    expect(page).to have_content "Articles List"
  end

  scenario "see existing articles" do
    visit articles_path
    expect(page).to have_content article.title
    expect(page).to have_content article.text.split(' ').first(100).join(' ')+'...'
    save_and_open_page
  end

  scenario "view full article" do
    visit articles_path
    expect(page).to have_link "more"
    click_link'more'
    visit article_path(article.id)
    expect(page).to have_content article.title
    expect(page).to have_content article.text
    save_and_open_page
  end
end
