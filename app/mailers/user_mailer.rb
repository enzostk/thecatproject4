class UserMailer < ApplicationMailer
    default from: 'seoulite@yopmail.com'
   
    def welcome_email(user)
      @user = user 
      @url  = 'thecatproject4.herokuapp.com/' 
      mail(from: 'teaching.know@gmail.com' ,to: @user.email, subject: 'Bienvenue chez nous !') 
    end

  end
  