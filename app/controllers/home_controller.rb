class HomeController < ApplicationController
  before_action :authenticate_user!
  def index 
    @user_got_these_governings = current_user.governings.map{ |governing| governing.customer_id}

    @user_is_allowed_to_manipulate_with_customer = @user_got_these_governings.include?(session[:current_customer])
  end
end
