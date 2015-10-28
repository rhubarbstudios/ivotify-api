require 'rails_helper'

RSpec.describe Quote, type: :model do

  it "is valid with a body and quote" do
    quote = build(:quote)
    expect(quote).to be_valid
  end

  it "is invalid without a body" do
    quote = build(:quote, body: nil)
    expect(quote).to be_invalid
  end

  it "is invalid without a source" do
    quote = build(:quote, source: nil)
    expect(quote).to be_invalid
  end

  it "cannot have the same body content as another quote" do
    quote = create(:quote)
    quote2 = build(:quote)
    quote2.body = quote.body
    expect(quote2).to be_invalid
  end

end
