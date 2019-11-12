class Admin::ExhibitionsController < AdminController
  def index
    @exhibitions = Exhibition.all
  end

  def new
    @exhibition = Exhibition.new
  end

  def create
    @exhibition = Exhibition.new(exhibition_params)

    if @exhibition.save
      redirect_to exhibitions_path
    else
      render 'new'
    end
  end

  def edit
    @exhibition = Exhibition.find(params[:id])
  end

  def update
    @exhibition = Exhibition.find(params[:id])

    if @exhibition.update(exhibition_params)
      redirect_to admin_exhibitions_path
    else
      render 'edit'
    end
  end

  def destroy
    @exhibition = Exhibition.find(params[:id])

    @exhibition.destroy
    redirect_to admin_exhibitions_path(@exhibition)
  end


  private

  def exhibition_params
    params.require(:exhibition).permit(:start, :name, :location)
  end
end
