class UserMailer < ApplicationMailer
  default from: 'no-reply.pacevent@yopmail.com'

  def welcome_email(user)
    @user = user 
    @url  = 'https://paceventbrite.herokuapp.com/'
    mail(to: @user.email, subject: 'Bienvenue sur PAC EventBrite !')
  end
end
