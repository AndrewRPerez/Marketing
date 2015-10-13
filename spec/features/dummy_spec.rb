require 'rails_helper'

describe TrueClass do
  subject { true }
  it "is not false" do
    expect(subject).not_to be_falsey
  end
end
