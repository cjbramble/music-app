# Provides artist class
# association to song objects
# validates presence of name
# validates name under maximum allowed characters
#
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :album
  validates :title, presence: true, length: { maximum: 150 }
end
