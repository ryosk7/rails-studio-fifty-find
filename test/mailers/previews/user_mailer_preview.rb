class UserMailerPreview < ActionMailer::Preview
  def welcome
    user = User.first
    UserMailer.welcome(user)
  end

  def booking
    user = User.last
    booking = Booking.last
    UserMailer.booking(user, booking)
  end
end
