class AdminController < ApplicationController
  before_action :require_admin

  def index
    redirect_to admin_categories_path
  end
end
