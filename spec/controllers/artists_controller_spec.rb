require 'rails_helper'

RSpec.describe ArtistsController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, :id => 1
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "saves an artist" do
      artist = Artist.new
      artist.name = "Example"
      expect(artist.save).to eq(true)
    end
  end

  describe "DELETE #destroy" do
    it "destroys an artist" do
      artist = Artist.new
      artist.name = "Example"
      artist.save
      expect{
        artist.destroy
      }.to change(Artist, :count).by(-1)
    end
  end
end
