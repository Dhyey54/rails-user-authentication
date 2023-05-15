Rails.application.routes.draw do
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  
  namespace :user do
    # Sign Up Routes
    post "sign_up", to: "registerations#create"
    get "sign_up", to: "registerations#new"
    
    # Login Routes
    post "login", to: "sessions#create", as: "login"
    delete "logout", to: "sessions#destroy"
    get "login", to: "sessions#new"
  end
end
