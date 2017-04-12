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

  scope :available_for, ->(date) do
    reserved_studio_ids = Booking.on(date).pluck('DISTINCT studio_id')
    if reserved_studio_ids.empty?
      all
    else
      where('id NOT IN (?)', reserved_studio_ids)
    end
  end
  # Find all available studios through their bookings
  # scope :available_for, ->(date) { joins(:bookings).group("studios.id, bookings.date") }
end
