Rails.application.routes.draw do
  devise_for :users
  mount Motor::Admin => '/motor_admin'

  get 'validation', to: 'validation#index', as: :validation
  get 'edit_validation', to: 'validation#edit', as: :edit_validation
  get 'consolidate/:id', to: 'validation#edit', as: :consolidate_match
  post 'consolidate', to: 'validation#update', as: :update_match_fields
  post 'add_article', to: 'validation#add_article', as: :add_article
  match 'remove_article', to: 'validation#remove_article', as: :remove_article, via: [:post, :get]

  get 'matcher', to: 'matcher#index', as: :matcher
  post 'match', to: 'matcher#create', as: :create_match
  match 'search', to: 'search#search', as: :search, via: [:get, :post]
  post 'search', controller: :welcome, action: :index, as: :dash_search

  get 'reports', to: 'reports#index', as: :reports

  resources :articles

  root "welcome#index"
end
