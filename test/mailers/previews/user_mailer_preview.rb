# Preview all emails at http://localhost:3000/rails/mailers/voluntary_mailer
class UserMailerPreview < ActionMailer::Preview
 def sample_mail_preview
    UserMailer.joined_event_mail(User.first)
  end
end
