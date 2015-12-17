require 'rails_helper'

#There will be seven tests

#1: someone creates an account (private. Perhaps assume that only specific people have
# the ability to create an account (staff))

# Unhappy paths: (1) Name cannot be blank
#                (2) Password cannot be blank
#                (3) Email cannot be blank

#2: Authenticate posting an article

#3: Authenticate for veiwing list of articles

#Unhappy path for 2 & 3 - redirect to root if not authenticated

feature 'create a user account' do
    let(:user) {create :user}
  scenario 'someone creates a user account' do
    visit new_user_registration_path
    fill_in "Email", :with => text
    fill_in "Password", :with => text
    fill_in "Password confirmation", :with => text
    click_button 'Sign up'
    save_and_open_page
    expect(page).to have_content "User created."
  end
end
