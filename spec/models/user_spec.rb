require 'rails_helper'

RSpec.describe User, type: :model do

  context "standard user" do

    it "is valid with a name, email and password" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is invalid without a name" do
      user = build(:user, name: nil)
      expect(user).to be_invalid
    end

    it "is invalid without an email" do
      user = build(:user, email: nil)
      expect(user).to be_invalid
    end

    it "is invalid without a password confirmation" do
      user = build(:user, password_confirmation: nil)
      expect(user).to be_invalid
    end

    it "is invalid without a valid email" do
      user = build(:user)
      user.email = 'email'
      expect(user).to be_invalid

      user.email = 'email.com'
      expect(user).to be_invalid

      user.email = 'email@domain'
      expect(user).to be_invalid

      user.email = 'email@domain..com'
      expect(user).to be_invalid

      user.email = 'email@string@domain.com'
      expect(user).to be_invalid
    end

    it "is invalid with a duplicate email address" do
      user = create(:user, email: "george@usa.com")
      user2 = build(:user, email: "george@usa.com")
      expect(user2).to be_invalid
    end

    it "returns a false admin status" do
      user = build(:user)
      expect(user.is_admin?).to eq false
    end

  end

  context "admin user" do

    it "returns a true admin status" do
      admin_user = build(:admin)
      expect(admin_user.is_admin?).to eq true
    end

  end


end

