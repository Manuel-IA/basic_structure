Rails.application.routes.draw do
  resources :notes
  resources :assignaments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { registrations: 'users/registrations' }

  namespace :admin do
    resources :users
    resources :insurances
  end

  # Defines the root path route ("/")
  root "dashboard#index"
end
