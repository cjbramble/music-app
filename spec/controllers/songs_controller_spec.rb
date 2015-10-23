require 'rails_helper'

RSpec.describe SongsController, :type => :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #song" do
    it "saves a song" do
      song = Song.new
      song.title = "Example"
      expect(song.save).to eq(true)
    end
  end

  describe "DELETE #song" do
    it "destroys song" do
      song = Song.new
      song.title = "Example"
      song.save
      expect{
        song.destroy
      }.to change(Song, :count).by(-1)
    end
  end
end
