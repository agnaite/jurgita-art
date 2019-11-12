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
      redirect_to admin_exhibitions_path
    else
      render 'new'
    end
  end

  private

  def exhibition_params
    params.require(:exhibition).permit(:start, :end, :name, :location)
  end
end
