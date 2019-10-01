class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    params.permit(:reverse)

    @category = Category.find(params[:id])

    if params[:reverse] == 'f'
      @reverse = false
      @paintings = @category.paintings
    else
      @reverse = true
      @paintings = @category.paintings.reverse
    end
  end
end
