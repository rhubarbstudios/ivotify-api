require 'rails_helper'

RSpec.describe IssueSide, type: :model do

  it "is valid with a title" do
    issue_side = build(:issue_side)
    expect(issue_side).to be_valid
  end

  it "is invalid without a title" do
    issue_side = build(:issue_side, title: nil)
    expect(issue_side).to be_invalid
  end

end
