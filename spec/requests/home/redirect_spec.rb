require "rails_helper"

RSpec.describe "GET :id", type: :request do
  it "redirects to an existing shortlink with a new visitor entry" do
    url = create(:url)

    get "/#{url.shortlink}"

    expect(response).to have_http_status :found
    expect(Visitor.all.length).to eq 1
  end

  it "renders error page when shortlink is invalid" do
    get "/a"

    expect(response).to have_http_status :ok
    expect(response.body).to include "Error! Shortlink invalid."
  end
end
