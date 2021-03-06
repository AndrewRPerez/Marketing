require 'rails_helper'

describe 'Deleting articles' do
  let!(:articlea) {create_list :article, 3}
  scenario 'someone deletes an article' do
    visit articles_path
    expect do
      click_link('Delete', match: :first)
    end.to change { Article.count }.by -1
    expect(page).to have_content 'Article successfully deleted'
  end
end
