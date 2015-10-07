require 'rails_helper'

RSpec.describe Issue, type: :model do

  describe Issue do

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

  end

end
