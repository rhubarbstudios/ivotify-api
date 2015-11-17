require 'rails_helper'

RSpec.describe IssueBullet, type: :model do

  it "is valid with a body" do
    issue_bullet = build(:issue_bullet)
    expect(issue_bullet).to be_valid
  end

  it "is invalid without a body" do
    issue_bullet = build(:issue_bullet, body: nil)
    expect(issue_bullet).to be_invalid
  end

end
