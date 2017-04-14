class Booking < ApplicationRecord
  after_create :send_booking_email

  belongs_to :user
  belongs_to :studio
  validates :date, presence: true
  validates :date, uniqueness: { scope: :studio }

  scope :on, ->(date) { where(date: date) }

  private
  def send_booking_email
    UserMailer.booking(self).deliver_now
  end
end
