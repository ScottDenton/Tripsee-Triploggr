class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :is_current_user?
  before_action :set_current_user

  def set_current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!@current_user
  end

  def is_current_user?
    session[:user_id] == params[:user_id].to_i
  end

end
