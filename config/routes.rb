Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'home/sessions'
  }

  root "home#index"

end
