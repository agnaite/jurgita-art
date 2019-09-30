class Admin::PaintingsController < AdminController
  def new
    @painting = Painting.new
    @category = Category.find(params[:category_id])
  end

  def show
    @painting = Painting.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def edit
    @painting = Painting.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def create
    @category = Category.find(params[:category_id])
    @painting = Painting.new(painting_params)

    @painting.category = @category

    if @painting.save
      redirect_to admin_category_path(@category)
    else
      render 'new'
    end
  end

  def update
    @category = Category.find(params[:category_id])
    @painting = Painting.find(params[:id])


    if @painting.update(painting_params)
      redirect_to admin_category_path(@category)
    else
      render 'edit'
    end
  end

  def destroy
    @painting = Painting.find(params[:id])
    @category = Category.find(params[:category_id])

    if @painting.image.attached?
      @painting.image.purge
    end

    @painting.destroy
    redirect_to admin_category_path(@category)
  end

  private
    def painting_params
      params.require(:painting).permit(:title, :size, :medium, :price, :new, :sold, :image, :category_id)
    end
end
