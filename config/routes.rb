Rails.application.routes.draw do
  root to: 'fraispros#index'
  get 'duplicate/:id', to: 'fraispros#duplicate', as: 'duplicate'
  resources :revenus
  resources :fraispros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
