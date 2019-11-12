class ExhibitionsController < ApplicationController
  def index
    @images = ExhibitionImage.all.reverse

    exhibitions = Exhibition.all.sort_by &:start
    @exhibitions = exhibitions.reverse
  end
end
