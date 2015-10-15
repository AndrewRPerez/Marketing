require 'rails_helper'

describe "Adding Articles" do
  scenario "somone creates an article" do
    visit new_article_path
    fill_in "Title", :with => text
    fill_in "Text", :with => text
    click_button "Save"
    expect(page).to have_content("Article successfully created.")
  end

  scenario "someone clicks the save button without creating and article" do
    visit new_article_path
    click_button "Save"
    expect(page).to have_content "Title cannot be blank."
  end
end
