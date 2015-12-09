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

  # it "cannot have the same title content as another issue_side" do
  #   issue_side = create(:issue_side)
  #   issue_side2 = build(:issue_side)
  #   issue_side2.title = issue_side.title
  #   expect(issue_side2).to be_invalid
  # end

end
