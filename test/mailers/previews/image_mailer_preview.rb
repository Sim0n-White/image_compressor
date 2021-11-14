# Preview all emails at http://localhost:3000/rails/mailers/image_mailer
class ImageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/image_mailer/image_status
  def image_status
    ImageMailer.image_status
  end

end
