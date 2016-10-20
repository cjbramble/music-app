class ArtistsController < ApplicationController
  before_filter :authenticate!, except: [:index, :show]

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
    @artist = Artist.find(params[:id])
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
    if @artist.save
      redirect_to @artist
    else
      render 'new'
    end
  end

  # Destroy song
  #
  # @param name [Symbol] :string
  # @return [View]
  #
  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path
  end

  # Provides database reference for creation of artist
  #
  private
    def artist_params
      params.require(:artist).permit(:name, :artist_id)
    end
  end
