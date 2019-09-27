class ApplicationController < ActionController::Base
  before_action :populate_categories
  helper_method :admin?

  def admin?
    session['admin']
  end

  def logout
    session.delete('admin')
    redirect_to root_path
  end

  protected
  def populate_categories
    @nav_categories = Category.all
  end

  def require_admin
    authenticate_or_request_with_http_basic do |username, pass|
      if username == ENV['user'] && pass == ENV['pass']
        session['admin'] = true
        true
      else
        redirect_to root_path
      end
    end
  end
end
