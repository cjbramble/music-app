# Provides artist class
# association to song objects
# validates presence of name
# validates name under maximum allowed characters
#
class Song < ActiveRecord::Base
  belongs_to :album
  has_one :artist, through: :album

  validates :title, presence: true, length: { maximum: 150 }
  validates :album_id, presence: true
end
