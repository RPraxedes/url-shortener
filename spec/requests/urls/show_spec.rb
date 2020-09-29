require "rails_helper"

RSpec.describe "GET urls/:id", type: :request do
  it "shows all links with their shortlinks" do
    url = Url.create(link: "http://www.example.com")

    get urls_url

    expect(response).to have_http_status :success
    expect(response.body).to include url.link
    expect(response.body).to include url.shortlink
  end
end
