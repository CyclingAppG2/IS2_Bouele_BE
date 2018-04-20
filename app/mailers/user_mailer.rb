class UserMailer < ApplicationMailer
  
  default from:  'bouele.app@gmail.com'

  def joined_event_mail(user)
    @user = user
    mail(to: @user.email, subject: 'Joined event on Bouele!')
  end
end
