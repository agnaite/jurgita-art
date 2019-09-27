class PaintingsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @paintings = @category.paintings
  end

  def show
    @category = Category.find(params[:category_id])
    @painting = Painting.find(params[:id])
  end
end
