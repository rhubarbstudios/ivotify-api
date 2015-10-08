require 'rails_helper'

RSpec.describe "Users API", type: :request do

  it "gets an individual user" do
    user = create(:user)

    get "/api/users/#{user.id}"

    expect(response).to be_success
    expect(response).to have_http_status(200)

    json = JSON.parse(response.body)
    expect(json['name']).to eq user.name
    expect(json['email']).to eq user.email
  end

  it "creates a new user with valid attributes" do
    user_attributes = attributes_for :user

    expect {post "/api/users", user: user_attributes }.to change(User, :count).by(1)
    expect(response).to be_success
    expect(response).to have_http_status(201)
  end

  it "does not create a new user with invalid attributes" do
    user_attributes = attributes_for :invalid_user

    expect {post "/api/users", user: user_attributes }.to change(User, :count).by(0)
    expect(response).not_to be_success
    expect(response).to have_http_status(422)
  end

  it "updates a user record" do
    user = create(:user)
    new_attributes = {
      name: "Arthur Dent",
      email: "adent@milkyway.com",
    }

    put "/api/users/#{user.id}", user: new_attributes

    expect(response).to be_success
    expect(response).to have_http_status(200)

    json = JSON.parse(response.body)
    expect(json['name']).to eq "Arthur Dent"
    expect(json['email']).to eq "adent@milkyway.com"

  end

  it "destroys a user record" do
    user = create(:user)

    delete "/api/users/#{user.id}"

    expect(response).to be_success
    expect(response).to have_http_status(204)
  end

end

