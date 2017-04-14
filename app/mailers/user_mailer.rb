class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Welcome to Studio Fifty-Find!')
    # This will render a view in `app/views/user_mailer`!
  end

  def booking(booking)
    @user = booking.user

    mail(to: @user.email, subject: 'Your booking confirmation on Studio Fifty-Find')
  end
end
