require 'ffaker'

FactoryGirl.define do
  factory :article do
    title {FFaker::Lorem.words(5).join ' '}
    text {FFaker::Lorem.paragraph(3)}
  end
end
