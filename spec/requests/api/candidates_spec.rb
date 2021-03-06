require 'rails_helper'

RSpec.describe "Candidates API", type: :request do

  it "sends all candidates" do
    candidates = create_list(:candidate, 8)

    get "/api/candidates"

    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it "sends an individual candidate" do
    candidate = create(:candidate)

    get "/api/candidates/#{candidate.id}"

    expect(response).to be_success
    expect(response).to have_http_status(200)

    json = JSON.parse(response.body)
    expect(json['first_name']).to eq candidate.first_name
    expect(json['last_name']).to eq candidate.last_name
    expect(json['bio']).to eq candidate.bio
    expect(json['full_name']).to eq candidate.full_name
    expect(json['quotes'][0]['body']).to eq candidate.quotes.first.body
    expect(json['quotes'][0]['source']).to eq candidate.quotes.first.source
    expect(json['quotes'][0]['issue_id']).to eq candidate.quotes.first.issue_id
  end

  it "creates a new candidate with valid attributes" do
    candidate_attributes = attributes_for :candidate

    expect {post "/api/candidates", candidate: candidate_attributes }.to change(Candidate, :count).by(1)
    expect(response).to be_success
    expect(response).to have_http_status(201)
  end

  it "does not create a new candidate with invalid attributes" do
    candidate_attributes = attributes_for :invalid_candidate

    expect {post "/api/candidates", candidate: candidate_attributes }.to change(Candidate, :count).by(0)
    expect(response).not_to be_success
    expect(response).to have_http_status(422)
  end

  it "updates a candidate record" do
    candidate = create(:candidate)
    # candidate.quotes.destroy_all
    new_attributes = {
      first_name: "Zaphod",
      last_name: "Beeblebrox",
      bio: "Anyone who is capable of getting themselves made President should on no account be allowed to do the job.",
      quotes: [{id: candidate.quotes.first.id, body: "This is a new quote", source: "New York Times"}]
    }

    put "/api/candidates/#{candidate.id}", candidate: new_attributes

    expect(response).to be_success
    expect(response).to have_http_status(200)

    json = JSON.parse(response.body)
    expect(json['first_name']).to eq "Zaphod"
    expect(json['last_name']).to eq "Beeblebrox"
    expect(json['bio']).to eq "Anyone who is capable of getting themselves made President should on no account be allowed to do the job."
    expect(json['full_name']).to eq "Zaphod Beeblebrox"
    expect(json['quotes'][0]['body']).to eq "This is a new quote"
    expect(json['quotes'][0]['source']).to eq "New York Times"

  end

  it "does not update a candidate with an invalid record" do
    candidate = create(:candidate)
    new_attributes = {
      first_name: nil,
      last_name: nil,
      bio: "This is a bad candidate"
    }

    put "/api/candidates/#{candidate.id}", candidate: new_attributes

    expect(response).not_to be_success
    expect(response).to have_http_status(422)
  end

  it "destroys a candidate record" do
    candidate = create(:candidate)

    delete "/api/candidates/#{candidate.id}"

    expect(response).to be_success
    expect(response).to have_http_status(204)
  end

end

