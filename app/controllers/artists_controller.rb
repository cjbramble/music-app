class ArtistsController < ApplicationController

  # List all artists
  #
  def index
    @artists = Artist.all
  end

  # Show specific artist along with songs that belong to that artist
  #
  # @param id [Symbol] :integer
  # @return [View]
  #
  def show
    @artist = Artist.where(id: params[:id]).first
  end

  # New artist form
  #
  def new
    @artist = Artist.new
  end

  # Process and create new artist
  #
  # @param name [Symbol] :string
  # @param artist_id [Symbol] :integer
  # @return [Redirect]
  #
  def create
    @artist = Artist.new(artist_params)

    @artist.save
    redirect_to @artist
  end

  private
    def artist_params
      params.require(:artist).permit(:name, :artist_id)
    end
  end
