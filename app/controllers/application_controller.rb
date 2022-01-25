class ApplicationController < ActionController::Base
  
  before_action :put_customerid_to_audited_store
  helper_method :current_customer

  def after_sign_out_path_for(resource_or_scope)
    "/users/sign_in"
  end

  def current_customer
    @current_customer ||= current_user.governings.find_by(customer_id: session[:current_customer]).customer
  end

  def put_customerid_to_audited_store
    Audited.store[:customer_id] = session[:current_customer]
  end
end
