class AdminMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.welcome.subject
  #
  def welcome(admin)
    @admin = admin  # Instance variable => available in view

    mail(to: @admin.email, subject: 'Welcome to MVC')
    # This will render a view in `app/views/user_mailer`!
  end
end
