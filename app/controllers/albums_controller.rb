class AlbumsController < ApplicationController
  before_filter :authenticate!, except: [:index, :show]

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
    @artist = Artist.all
  end

  def new
    @album = Album.new
    @artists = Artist.all
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to @album
    else
      @artists = Artist.all
      render 'new'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    redirect_to albums_path
  end

  private
  def album_params
    params.require(:album).permit(:title, :artist_id)
  end
end
