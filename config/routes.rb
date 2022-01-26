Rails.application.routes.draw do
  resources :customers_zone_acces
  resources :visitors_zone_acces
  resources :zones
  resources :visitors
  resources :users

  devise_for :users, controllers: {
    sessions: 'home/sessions'
  }

  root "home#index"

  get 'defender/logger' 
end



#get 'home/index'
#root "home#index"