require 'rails_helper'

RSpec.describe ArtistsController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "#show" do
    it "returns http success" do
      get :show, :id => 1
      expect(response).to have_http_status(:success)
    end
  end

  describe "#create" do
    it "saves an artist" do
      artist = Artist.new
      artist.name = "Example"
      expect(artist.save).to eq(true)
    end
  end

  describe "#destroy" do
    it "destroys an artist" do
      artist = Artist.new
      artist.name = "Example"
      expect(artist.destroy).to eq(true)
    end
  end

private
  def artist_params
    params.require(:artist).permit(:name, :artist_id)
  end
end
