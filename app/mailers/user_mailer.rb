class UserMailer < ApplicationMailer
    default from: 'kasper@betterwing.dk'
  
    def send_welcome_email(user)
      @user = user
      mail(:to => @user.email, :subject => "Welcome!")
    end
  
  end
