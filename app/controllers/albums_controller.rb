class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
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
      render 'new'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @artist.destroy

    redirect_to albums_path
  end

  private
  def album_params
    params.require(:artist).permit(:name, :artist_id)
  end
end
