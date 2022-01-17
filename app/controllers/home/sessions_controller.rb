class Home::SessionsController < Devise::SessionsController


   def create
     super
     which_customer_is_selected = params[:user][:customer_id]

     session[:current_customer] = which_customer_is_selected
   end
end
