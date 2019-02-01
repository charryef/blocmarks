class UserMailer < ApplicationMailer
  default from: 'charryef@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'cfuller-blocmarks.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
