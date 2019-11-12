class ExhibitionsController < ApplicationController
  def index
    @exhibitions = Exhibition.all
    @images = ExhibitionImage.all
  end
end
