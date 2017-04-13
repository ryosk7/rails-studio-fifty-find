class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :send_welcome_email

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings, dependent: :destroy
  has_many :offers, through: :studios, source: :bookings
  has_many :studios
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  private
  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
