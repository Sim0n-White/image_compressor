class Image < ApplicationRecord
  has_one_attached :image

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }


  def get_image_url
    url_for(self.image)
  end
end
