class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @body = message.body
    @name = message.name
    @phone = message.phone
    @email = message.email

    mail to: "kaizostudio.dev@gmail.com", from: message.email
  end
end
