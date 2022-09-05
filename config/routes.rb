Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users, skip: [:registrations], controllers: { registrations: 'users/registrations' }
  devise_scope :user do
    get 'users/edit', to: 'users/registrations#edit', as: 'edit_user_registration'
    patch 'users', to: 'users/registrations#update', as: 'user_registration'
    put 'users', to: 'users/registrations#update', as: nil
  end

  namespace :admin do
    resources :users
    resources :insurances
  end

  # Defines the root path route ("/")
  root "dashboard#index"
end
