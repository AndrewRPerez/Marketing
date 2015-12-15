require 'ffaker'

FactoryGirl.define do
  factory :user do
    name {FFaker::Name.name}
    password {FFaker::Lorem.words(5)}
  end
end
