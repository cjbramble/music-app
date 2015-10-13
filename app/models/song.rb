class Song < ActiveRecord::Base
  belongs_to :artist
  validates :title, presence: true, length: { maximum: 150 }
end
