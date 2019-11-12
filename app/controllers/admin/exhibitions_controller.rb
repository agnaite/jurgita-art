class Admin::ExhibitionsController < AdminController
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

  private

  def exhibition_params
    params.require(:exhibition).permit(:start, :name, :location)
  end
end
