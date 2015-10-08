require 'rails_helper'

RSpec.describe "Sessions API", type: :request do

  it "creates a new session with valid user authentication" do
    user = create(:user)

    session_attributes = {email: user.email, password: "password"}
    post "/api/sessions", session: session_attributes

    expect(response).to be_success

    json = JSON.parse(response.body)
    expect(json['session']['id']).to eq user.id
    expect(json['email']).to eq user.email
  end

  it "does not create a new sessiont with invalid user authentication" do
    user = create(:user)

    session_attributes = {email: user.email, password: "badpassword"}
    post "/api/sessions", session: session_attributes

    expect(response).not_to be_success
    expect(response).to have_http_status(400)
  end

end

