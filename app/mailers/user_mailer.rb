class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.apply.subject
  #
  def apply(user)
    @user = user
    mail to: @user.email, subject: "Mr.Gigs: Nova Banda candidata"
  end
end
