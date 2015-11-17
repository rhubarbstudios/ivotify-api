require 'rails_helper'

RSpec.describe "Issues API", type: :request do

  it "sends all issues" do
    issues = create_list(:issue, 8)

    get "/api/issues"

    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it "sends an individual issue" do
    issue = create(:issue)

    get "/api/issues/#{issue.id}"

    expect(response).to be_success
    expect(response).to have_http_status(200)

    json = JSON.parse(response.body)
    expect(json['title']).to eq issue.title
    expect(json['summary']).to eq issue.summary
    expect(json['background']).to eq issue.background
    # expect(json['issue_sides'][0]['title']).to eq issue.issue_sides.first.title
  end

  it "creates a new issue with valid attributes" do
    issue_attributes = attributes_for :issue

    expect {post "/api/issues", issue: issue_attributes }.to change(Issue, :count).by(1)
    expect(response).to be_success
    expect(response).to have_http_status(201)
  end

  it "does not create a new issue with invalid attributes" do
    issue_attributes = attributes_for :invalid_issue

    expect {post "/api/issues", issue: issue_attributes }.to change(Issue, :count).by(0)
    expect(response).not_to be_success
    expect(response).to have_http_status(422)
  end

  # it "updates an issue record" do
  #   issue = create(:issue)
  #   new_attributes = {
  #     title: "Gluten-Free Automobiles",
  #     summary: "For sensitive motorists",
  #     background: "Lets go to mars",
  #     side_one: "Like now",
  #     side_two: "Forever and ever",
  #     issue_bullets: [{id: issue.issue_bullets.first.id, body: "This is a new bullet", side_id: "New York Times"}]
  #   }
  #
  #   put "/api/issues/#{issue.id}", issue: new_attributes
  #
  #   expect(response).to be_success
  #   expect(response).to have_http_status(200)
  #
  #   json = JSON.parse(response.body)
  #   expect(json['title']).to eq "Gluten-Free Automobiles"
  #   expect(json['summary']).to eq "For sensitive motorists"
  #   expect(json['background']).to eq "Lets go to mars"
  #   expect(json['side_one']).to eq "Like now"
  #   expect(json['side_two']).to eq "Forever and ever"
  #   expect(json['issue_bullets'][0]['body']).to eq "This is a new bullet"
  #   expect(json['issue_bullets'][0]['side_id']).to eq "New York Times"
  # end

  it "does not update an issue record with invalid attributes" do
    issue = create(:issue)
    new_attributes = {
      title: nil,
      summary: nil,
      background: "Lets go to mars"
    }

    put "/api/issues/#{issue.id}", issue: new_attributes

    expect(response).not_to be_success
    expect(response).to have_http_status(422)
  end

  it "destroys a issue record" do
    issue = create(:issue)

    delete "/api/issues/#{issue.id}"

    expect(response).to be_success
    expect(response).to have_http_status(204)
  end

end
