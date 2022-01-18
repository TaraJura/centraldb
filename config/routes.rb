Rails.application.routes.draw do
  resources :visitors
  
  devise_for :users, controllers: {
    sessions: 'home/sessions'
  }

  root "home#index"

end
