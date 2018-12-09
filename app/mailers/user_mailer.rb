class UserMailer < ApplicationMailer

    default from: "newapp@gmail.com"

    def contact_form(email, name, message)
    @message = message
      mail(from: email,
           to: 'pujols.fr@gmail.com',
           subject: "A new contact form message from #{name}")
  end
end
