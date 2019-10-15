class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    params.permit(:reverse)

    @category = Category.find(params[:id])

    if params[:reverse] == 't'
      @reverse = true
      @paintings = @category.paintings
    else
      @reverse = false
      @paintings = @category.paintings.reverse
    end
  end
end
