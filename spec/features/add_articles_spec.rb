require 'rails_helper'

describe "Adding Articles" do
  scenario "somone creates an article" do
    visit new_article_path
    fill_in "Title", :with => text
    fill_in "Text", :with => text
    click_button "Save"
    expect(page).to have_text("Article successfully created.")
  end
end
