require 'rails_helper'

describe 'Deleting articles' do
  scenario 'someone deletes an article' do
    visit articles_path
    expect(page).to have_link 'delete'
    click_link('delete', match: :first)
    expect(page).to have_content 'Article successfully deleted'
  end
end
