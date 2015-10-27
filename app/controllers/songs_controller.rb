class SongsController < ApplicationController

  # List all songs
  #
  def index
    @songs = Song.all
  end

  # Show specific song
  #
  # @param id [Symbol] :integer
  # @return [View]
  #
  def show
    @song = Song.find(params[:id])
  end

  # New song form
  #
  def new
    @song = Song.new
    @artists = Artist.all
  end

  # Process and create new song
  #
  # @param title [Symbol] :string
  # @param artist_id [Symbol] :integer
  # @return [Redirect]
  #
  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render 'new'
    end
  end

  # Destroy song
  #
  # @param title [Symbol] :string
  # @param artist_id [Symbol] :integer
  # @return [Redirect]
  #
  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to songs_path
  end

  # Provides database reference during creation of song
  #
  private
    def song_params
      params.require(:song).permit(:title, :artist_id)
    end
end
