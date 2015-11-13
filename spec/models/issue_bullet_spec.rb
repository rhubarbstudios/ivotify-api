require 'rails_helper'

RSpec.describe IssueBullet, type: :model do

  it "is valid with a body and issue_bullet" do
    issue_bullet = build(:issue_bullet)
    expect(issue_bullet).to be_valid
  end

  it "is invalid without a body" do
    issue_bullet = build(:issue_bullet, body: nil)
    expect(issue_bullet).to be_invalid
  end

  it "is invalid without a issue_bullet" do
    issue_bullet = build(:issue_bullet, side_id: nil)
    expect(issue_bullet).to be_invalid
  end

  it "cannot have the same body content as another quote" do
    issue_bullet = create(:issue_bullet)
    issue_bullet2 = build(:issue_bullet)
    issue_bullet2.body = issue_bullet.body
    expect(issue_bullet2).to be_invalid
  end

end
