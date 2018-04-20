# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
 def joined_event_mail_preview
    UserMailer.joined_event_mail(User.first)
  end
end
