class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact.subject
  #
  default from: "bouele.app@gmail.com"

  def contact(contactDatum)
    @contactDatum = contactDatum

    mail(to: @contactDatum.email, subject: 'Email de contacto' )
  end
end
