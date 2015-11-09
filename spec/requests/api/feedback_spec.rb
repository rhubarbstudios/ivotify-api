require 'rails_helper'

RSpec.describe "Feedback API", type: :request do

  it "sends all feedbacks" do
    feedbacks = create_list(:feedback, 8)

    get "/api/feedbacks"

    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it "sends an individual feedback" do
    feedback = create(:feedback)

    get "/api/feedbacks/#{feedback.id}"

    expect(response).to be_success
    expect(response).to have_http_status(200)

    json = JSON.parse(response.body)
    expect(json['body']).to eq feedback.body
  end

  it "creates a new feedback with valid attributes" do
    feedback_attributes = attributes_for :feedback

    expect {post "/api/feedbacks", feedback: feedback_attributes }.to change(Feedback, :count).by(1)
    expect(response).to be_success
    expect(response).to have_http_status(201)
  end

end
