class Image < ApplicationRecord
  has_one_attached :image
  has_one_attached :compressed_image

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  after_create_commit :downscale_image

  def downscale_image
    ImageCompressorWorker.perform_in(5.seconds, id)
  end
end
