require 'rails_helper'

#There will be three main tests with bad paths with a total of seven tests:

#1: someone creates an account (private. Perhaps assume that only specific people have
# the ability to create an account (staff))

# Unhappy paths: (1) Name cannot be blank
#                (2) Password cannot be blank

#2: Requre authentication by way of user's password for posting an article

#Unhappy path - Password cannot be blank

#3: Require authentication by way of user's password for veiwing list of articles

#Unhappy path - Password cannot be blank

feature 'create a user account' do
  let!(:user) {create :user}

  scenario 'someone creates a user account' do
    visit new_user_path
    fill_in "Name", :with => text
    fill_in "Password", :with => text
    click_button 'Create User'
    expect (page).to have_content "Created User"
  end
end
