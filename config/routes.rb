Rails.application.routes.draw do
  resources :police_stations
  resources :wanted_people
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users
  resources :stolen_properties
  resources :missing_people
  root 'pages#index'
  resources :reports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
