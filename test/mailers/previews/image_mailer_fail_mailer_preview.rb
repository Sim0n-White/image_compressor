# Preview all emails at http://localhost:3000/rails/mailers/image_mailer_fail_mailer
class ImageMailerFailMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/image_mailer_fail_mailer/image_fail
  def image_fail
    ImageMailerFailMailer.image_fail
  end

end
