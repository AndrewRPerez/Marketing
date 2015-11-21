require 'rails_helper'
require 'ffaker'

describe "Listing articles" do
  let!(:article) { create :article }
  scenario "someone views the articles index" do
    visit articles_path
    expect(page).to have_content "Articles List"
  end

  scenario "view the article that was just created" do
    visit articles_path
    expect(page).to have_content article.title
    expect(page).to have_content body.split(' ').first(100).join(' ')+'...'
    save_and_open_page
  end
end
