require 'rails_helper'

describe "Listing articles" do
  let!(:articles) { create_list :article, 3 }
  
  scenario "see existing articles" do
    visit blog_index_path
    expect(page).to have_content articles.first.title
    expect(page).to have_content articles.first.text.split(' ').first(100).join(' ')+'...'
  end

  scenario "view full article" do
    visit blog_index_path
    within "article", text: articles.first.title do
      expect(page).to have_link 'more'
      click_link('more', match: :first)
    end
    expect(page).to have_content articles.first.title
    expect(page).to have_content articles.first.text
  end
end
