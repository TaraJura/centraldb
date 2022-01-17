class Home::SessionsController < Devise::SessionsController
   def create
     super
     which_customer_is_selected = params[:user][:customer_id]

     session[:current_customer] = which_customer_is_selected.to_i

    if !current_user.user_can_acces_customer(session[:current_customer])
      sign_out current_user
      
    end
  end
end
