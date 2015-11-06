class WelcomeController < ApplicationController
  def index
    @artists = random_artists_for_welcome_page
  end

  private
    def random_artists_for_welcome_page
      rand_id = rand(Artist.count).to_i
      rand_record = Artist.where("id >= ?", rand_id).limit(1)
    end
  end
