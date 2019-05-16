class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  private

  def current_user
    #session[:user_id]がなければnilが返される
    return unless session[:user_id]
    #session[:user_id]がある場合は@current_userにuser_idが入る
    @current_user = User.find_by(id: session[:user_id])
  end
end
