Rails.application.routes.draw do
  devise_for :users
  mount Motor::Admin => '/motor_admin'

  get 'consolidate', to: 'validation#index', as: :consolidation
  # get 'edit_validation', to: 'validation#edit', as: :edit_validation
  get 'consolidate/:id', to: 'validation#edit', as: :consolidate_match
  post 'consolidate', to: 'validation#update', as: :update_match_fields
  post 'add_article', to: 'validation#add_article', as: :add_article
  match 'remove_article', to: 'validation#remove_article', as: :remove_article, via: [:post, :get]
  match 'main_article', to: 'validation#main_article', as: :main_article, via: [:post, :get]

  get 'validation/:id/comments', to: 'validation#comments', as: :match_comments
  post 'validation/:id/comments', to: 'validation#new_comment', as: :new_match_comment

  get 'validation/:id/pass', to: 'validation#pass', as: :review_pass
  get 'validation/:id/fail', to: 'validation#fail', as: :review_fail

  get 'matcher', to: 'matcher#index', as: :matcher
  post 'match', to: 'matcher#create', as: :create_match
  match 'search', to: 'search#search', as: :search, via: [:get, :post]
  post 'search', controller: :welcome, action: :index, as: :dash_search

  get 'reports', to: 'reports#index', as: :reports

  #post 'problem', to: 'problems#problem', as: :problem
  resources :problems, only: [:create]
  resources :matches, only: [:destroy]
  resources :articles
  resources :comments

  root "welcome#index"
end
