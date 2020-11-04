Rails.application.routes.draw do
  get 'home/index'
  root to: "home#index"

  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  #root to: 'fraispros#index'
  get 'duplicate/:id', to: 'fraispros#duplicate', as: 'duplicate'
  resources :revenus
  get "fraispros-categ", to: "fraispros#index2", as: 'fraispros_categ'
  

  resources :fraispros
  resources :categs
  resources :params
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
