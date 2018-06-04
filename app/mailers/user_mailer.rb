class UserMailer < ApplicationMailer
  
  default from:  'bouele.app@gmail.com'

  def joined_event_mail(user, event)
    @user = user
    @event = event
    @msg = "Joined the event \'"+@event.name+"\' on Bouele!" 
    puts @msg
    mail(to: @user.email, subject: @msg)
  end


  def left_event_mail(user, event)
    @user = user
    @event = event
    @msg = "You just left the event \'"+@event.name+"\' you were participating" 
    puts @msg
    mail(to: @user.email, subject: @msg)
  end

  def cancel_event_mail(volunatries, event)
    volunatries.each do |user|
    @user = user.user_polymorphism.user
    @event = event
    mail(to: @user.email, subject: "!Notificacion de evento " + @event.name + " !!Cancelado")
    end
  end

end
