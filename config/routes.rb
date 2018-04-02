Rails.application.routes.draw do
  resources :clients
  post 'clients/import'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'clients#index'
end
