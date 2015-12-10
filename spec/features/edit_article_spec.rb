require 'rails_helper'

feature "Edit Article" do
  let!(:article) { create :article }
  scenario "A user edits an article" do
    visit articles_path

    within 'article', text: article.title do
      click_on 'Edit'
    end

    expect(page).to have_selector 'h2', text: 'Edit Article'
    fill_in "Title", with: "Hello World"

    click_on "Save"

    expect(page).to have_content "Article successfully updated"
    expect(page).to have_selector 'article', text: "Hello World"
  end
end
