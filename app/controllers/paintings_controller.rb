class PaintingsController < ApplicationController
  def show
    @painting = Painting.find(params[:id])
  end

  def new
  end

  def create
    @painting = Painting.new(painting_params)

    #@painting.image.attach(params[:image])
    @painting.save

    redirect_to @painting
  end

  private
    def painting_params
      params.require(:painting).permit(:title, :size, :medium, :price, :new, :sold, :image)
    end
end
