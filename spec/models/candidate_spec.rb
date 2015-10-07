require 'rails_helper'

RSpec.describe Candidate, type: :model do

  describe Candidate do

    it "is valid with a first name, last name and bio" do
      candidate = build(:candidate)
      expect(candidate).to be_valid
    end

    it "is invalid without a first_name" do
      candidate = build(:candidate, first_name: nil)
      expect(candidate).to be_invalid
    end

    it "is invalid without a last_name" do
      candidate = build(:candidate, last_name: nil)
      expect(candidate).to be_invalid
    end

    it "is invalid without a bio" do
      candidate = build(:candidate, bio: nil)
      expect(candidate).to be_invalid
    end

    it "returns a contact's full name as a string" do
      candidate = build(:candidate, first_name: "George", last_name: "Washington")
      expect(candidate.full_name).to eq "George Washington"
    end

  end

end
