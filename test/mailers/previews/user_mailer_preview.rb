# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
 def joined_event_mail_preview
    UserMailer.joined_event_mail(User.first, Event.first)
  end

  def left_event_mail_preview
    UserMailer.left_event_mail(User.first, Event.first)
  end
end
