require 'rails_helper'

describe "Listing articles" do
  scenario "someone views the articles index" do
    visit articles_path

    expect(page).to have_content "Articles List"
  end
end
