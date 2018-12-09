# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'newapp@gmail.com'
  layout 'mailer'
end
