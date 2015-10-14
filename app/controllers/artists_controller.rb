class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.where(id: params[:id])
  end

  def new
    @artist = Artist.new
  end

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
