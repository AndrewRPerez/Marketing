require 'rails_helper'

describe "Listing articles" do
  let!(:articles) { create_list :article, 3 }
  scenario "someone views the articles index" do
    visit articles_path
    expect(page).to have_content "Articles List"
  end

  scenario "see existing articles" do
    visit articles_path
    expect(page).to have_content articles.first.title
    expect(page).to have_content articles.first.text.split(' ').first(100).join(' ')+'...'
    save_and_open_page
  end

  scenario "view full article" do
    visit articles_path
    expect(page).to have_link 'more'
    click_link 'more'
    expect(page).to have_content article.title
    expect(page).to have_content article.text
  end
end
