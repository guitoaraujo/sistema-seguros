Rails.application.routes.draw do
  resources :clients
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'clients#index'
end
