class CreateAlbumAssociations < ActiveRecord::Migration
  def change
    add_column :albums, :artist_id, :integer
    add_column :songs, :albums_id, :integer
  end
end
