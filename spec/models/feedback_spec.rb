
require 'rails_helper'

RSpec.describe Feedback, type: :model do

  it "is valid with a body" do
    feedback = build(:feedback)
    expect(feedback).to be_valid
  end

  it "is invalid without a body" do
    feedback = build(:feedback, body: nil)
    expect(feedback).to be_invalid
  end

end
