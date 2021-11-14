class ImageMailerFailMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.image_mailer_fail_mailer.image_fail.subject
  #
  def image_status
    @email = params[:email]
    mail(
      from: "to@example.org",
      to: @email,
      subject: "Изображение не удалось сжать"
    )
  end
end
