class Studio < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence:true
  validates :user_id, presence:true
  validates :capacity, presence:true
end
