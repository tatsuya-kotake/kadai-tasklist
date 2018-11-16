class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include LoginHelper
  
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to new_login_path
    end
  end
end
