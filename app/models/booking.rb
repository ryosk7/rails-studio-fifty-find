class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  validates :date, presence: true
  validates :date, uniqueness: { scope: :studio }
end
