class ImageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.image_mailer.image_status.subject
  #
  def image_status
    @email = params[:email]
    @link = params[:link]
    mail(
      from: "to@example.org",
      to: @email,
      subject: "Изображение успешно сжато"
    )
  end
end
