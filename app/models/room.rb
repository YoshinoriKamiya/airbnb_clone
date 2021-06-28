class Room < ApplicationRecord
  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :accomodate, presence: true
  validates :bedroom, presence: true
  validates :bathroom, presence: true

  has_many :images
  has_many :user

  geocoded_by :location
  after_validation :geocode
end
