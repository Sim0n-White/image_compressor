class ImageCompressorWorker
  include Sidekiq::Worker
  include Rails.application.routes.url_helpers
  require 'open-uri'
  require "mini_magick"
  def perform(id)
    data = Image.find(id)
    image_link = 'http://127.0.0.1:3000' + Rails.application.routes.url_helpers.rails_blob_path(data.image, only_path: true)
    image = MiniMagick::Image.open(image_link)
    image.resize "10%"
    data.compressed_image.attach(io: image.path, filename: data.image.blob[:filename])
    compressed_image_link = 'http://127.0.0.1:3000' + Rails.application.routes.url_helpers.rails_blob_path(data.compressed_image, only_path: true)
    if data.image.blob.byte_size >= data.compressed_image.blob.byte_size
      ImageMailerFailMailer.with(email: data.email).image_fail.deliver_later
    else
      ImageMailer.with(email: data.email, link: compressed_image_link).image_status.deliver_later
    end
  end
end
