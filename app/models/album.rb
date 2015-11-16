class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs
  validates :title, presence: true, length: { maximum: 150 }
end
