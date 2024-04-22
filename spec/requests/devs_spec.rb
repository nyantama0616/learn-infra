require 'rails_helper'

RSpec.describe "Devs", type: :request do
  describe "GET /devs/ping" do
    before do
      get "/devs/ping"
    end

    it "returns 200" do
      expect(response).to have_http_status(200)
    end

    it "returns pong" do
      message = JSON.parse(response.body)["message"]
      expect(message).to eq("pong")
    end
  end
end
