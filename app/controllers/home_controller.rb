class HomeController < ApplicationController
  def users_session
    if session[:user_id]
      @user = User.find(session[:user_id])
  end
end
