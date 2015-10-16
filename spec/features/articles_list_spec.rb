require 'rails_helper'

describe "Listing articles" do
  scenario "someone views the articles index" do
    visit path_articles
    expect(page).to have_content "Articles List"
  end
end
