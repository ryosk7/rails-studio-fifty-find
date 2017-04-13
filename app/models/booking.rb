class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  validates :date, presence: true
  validates :date, uniqueness: { scope: :studio }

  scope :on, ->(date) { where(date: date) }
end
