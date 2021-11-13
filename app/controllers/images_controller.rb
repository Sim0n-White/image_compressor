class ImagesController < ApplicationController
  before_action :set_image, only: [:download]

  def compress
    @image = Image.new(image_params)
    if @image.save
      render status: 200
      #downscale_image(@image.id)
    else
      render status: 400
    end
  end

  def download
    @image.image.variant(saver: { quality: 10 })
    render json: url_for(@image.image)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_image
    @image = Image.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def image_params
    params.permit(:email, :image)
  end
end
