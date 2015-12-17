require 'ffaker'

FactoryGirl.define do
  factory :user do
   email {FFaker::Internet.email}
   password {FFaker::Lorem.words(5)}
   password_confirmation {FFaker::Lorem.word(5)}
  end
end
