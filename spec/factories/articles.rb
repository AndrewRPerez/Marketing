require 'ffaker'

FactoryGirl.define do
  factory :article do
    title {FFaker::Lorem.word}
    text {FFaker::Lorem.paragraph(3)}
  end
end
