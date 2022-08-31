Rails.application.routes.draw do
  devise_for :users
  mount Motor::Admin => '/motor_admin'
  get 'validation', to: 'validation#index', as: :validation
  get 'edit_validation', to: 'validation#edit', as: :edit_validation
  get 'consolidate/:id', to: 'validation#edit', as: :consolidate_match

  post 'consolidate', to: 'validation#update', as: :update_match_fields


  get 'matcher', to: 'matcher#index', as: :matcher
  post 'match', to: 'matcher#create', as: :create_match
  post 'search', to: 'search#search', as: :search

  get 'reports', to: 'reports#index', as: :reports

  resources :articles

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post 'search', controller: :welcome, action: :index, as: :dash_search

  # Defines the root path route ("/")
  root "welcome#index"
end
