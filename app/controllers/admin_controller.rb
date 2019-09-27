class AdminController < ApplicationController
  before_action :require_admin

  def require_admin
    http_basic_authenticate_or_request_with name: "dhh", password: "secret"
  end
end
