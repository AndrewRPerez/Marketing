require 'rails_helper'

describe "Homepage" do
  scenario "a vistor opens a webpage" do
    visit root_path
    expect(page).to have_content "Hello World"
  end
end
