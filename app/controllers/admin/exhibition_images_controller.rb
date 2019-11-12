class Admin::ExhibitionImagesController < AdminController
  def new
    @exhibition_image = ExhibitionImage.new
  end

  def create
    @exhibition_image = ExhibitionImage.new(exhibition_images_params)

    if @exhibition_image.save
      redirect_to exhibitions_path
    else
      render 'new'
    end
  end

  private

  def exhibition_images_params
    params.require(:exhibition_image).permit(:image, :caption)
  end
end
