class Admin::CategoriesController < AdminController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to admin_category_path(@category)
    else
      render 'new'
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
