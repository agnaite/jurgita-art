class ApplicationController < ActionController::Base
  before_action :populate_categories

  protected
  def populate_categories
    @nav_categories = Category.all
  end
end
