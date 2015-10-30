require 'rails_helper'

RSpec.describe Issue, type: :model do

  it "is valid with a title and summary" do
    issue = build(:issue)
    expect(issue).to be_valid
  end

  it "is invalid without a title" do
    issue = build(:issue, title: nil)
    expect(issue).to be_invalid
  end

  it "is invalid without a summary" do
    issue = build(:issue, summary: nil)
    expect(issue).to be_invalid
  end

  it "cannot have a duplicate issue title" do
    issue = create(:issue)
    issue2 = build(:issue)
    issue2.title = issue.title
    expect(issue2).to be_invalid
  end

end
