class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authorize

private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to root_url, alert: "You are not authorized" unless current_user
  end

  helper_method :current_user
end
