class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @first_name = message.first_name
    @last_name = message.last_name
    @email = message.email
    @phone_number = message.phone_number
    @contact_method = message.contact_method
    @location = message.location
    @subject = message.subject
    @body = message.body

    mail to: "hcdesignsby@gmail.com", from: message.email
  end

end
