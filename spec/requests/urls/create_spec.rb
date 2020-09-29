require "rails_helper"

RSpec.describe "POST urls", type: :request do
  it "creates shortlink from new link" do
    params = { link: "http://www.example.com" }

    post urls_url, params: params

    url = Url.first
    expect(response).to have_http_status :found
    expect(response.body).to include url.shortlink
  end

  it "shows shortlink from existing link" do
    url = Url.create(link: "http://www.example.com")
    params = { link: "http://www.example.com" }

    post urls_url, params: params

    expect(response).to have_http_status :found
    expect(response.body).to include url.shortlink
  end
end
