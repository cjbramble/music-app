# Provides artist class
# association to song objects
# validates presence of name
# validates name under maximum allowed characters
#
class Artist < ActiveRecord::Base
  has_many :songs
  has_many :albums
  validates :name, presence: true, length: { maximum: 150 }
end
