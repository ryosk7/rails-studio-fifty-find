class Studio < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence:true
  validates :user, presence:true
  validates :capacity, presence:true
  validates :photo, presence:true

  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  # Find all available studios through their bookings
  # scope :available_for, ->(date) { joins(:bookings).group("studios.id, bookings.date") }
end
