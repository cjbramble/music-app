class WelcomeController < ApplicationController
  def index
    @artists = random_artists_for_welcome_page
  end

  private
  
  def random_artists_for_welcome_page
    Artist.where("id in (?)", Artist.pluck(:id).shuffle[0..2])
  end
end
