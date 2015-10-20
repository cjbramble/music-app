require 'rails_helper'

RSpec.describe SongsController, :type => :controller do

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST song" do
    it "saves a song with artist_id"
    it "saves a title"
  end

  describe "DELETE song" do
    it "prompts user to verify"
    it "destroys song"
    it "removes association to artist"
  end
end
