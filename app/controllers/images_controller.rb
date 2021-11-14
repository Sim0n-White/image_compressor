class ImagesController < ApplicationController
  before_action :set_image, only: [:download]

  def compress
    #render json: image_params[:image]
    @image = Image.new(image_params)
    if @image.save
      render status: 200
    else
      render status: 400
    end
  end

  def download
    dow_link = url_for(@image.compressed_image)
    render json: dow_link
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
