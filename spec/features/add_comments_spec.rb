require 'rails_helper'

describe 'Adding comments' do
   before do
     visit blog_path(article)
   end

  let(:article) { create :article }
  let(:comment_attributes) { attributes_for :comment }

  scenario 'someone adds a comment for an article' do

    fill_in "Name", with: comment_attributes[:name]
    fill_in "Subject", with: comment_attributes[:subject]
    fill_in "Text", with: comment_attributes[:text]

    expect do
      click_on 'Comment'
    end.to change { Comment.count }.by 1

    expect(page).to have_content comment_attributes[:name]
    expect(page).to have_content comment_attributes[:subject]
    expect(page).to have_content comment_attributes[:text]
  end

  scenario 'someone adds a comment for an article without supplying a name' do

    fill_in "Subject", with: comment_attributes[:subject]
    fill_in "Text", with: comment_attributes[:text]

    expect do
      click_on 'Comment'
    end.to change { Comment.count }.by 1

    expect(page).to have_content comment_attributes[:subject]
    expect(page).to have_content comment_attributes[:text]
    expect(page).to have_content 'Anonymous Coward'
  end

  scenario 'someone adds a comment for an article without supplying a subject' do

    fill_in "Name", with: comment_attributes[:name]
    fill_in "Text", with: comment_attributes[:text]

    expect do
      click_on 'Comment'
    end.to change { Comment.count }.by 0

    expect(page).to have_content 'Subject cannot be blank'
    expect(page).not_to have_content comment_attributes[:name]
    expect(page).not_to have_selector '.uk-comment-body', text: comment_attributes[:text]
  end

  scenario 'someone adds a comment for an article without supplying comment text' do

    fill_in "Name", with: comment_attributes[:name]
    fill_in "Subject", with: comment_attributes[:subject]

    expect do
      click_on 'Comment'
    end.to change { Comment.count }.by 0

    expect(page).to have_content 'Text cannot be blank'
    expect(page).not_to have_content comment_attributes[:name]
    expect(page).not_to have_content comment_attributes[:subject]
  end
end
