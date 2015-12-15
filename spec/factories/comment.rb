require 'ffaker'

FactoryGirl.define do
  factory :comment do
    name "Bob"
    subject {FFaker::Lorem.words(5).join ' '}
    text { FFaker::Lorem.paragraph(3) }
  end
end
