Rails.application.routes.draw do
  get 'revenus/index'
  root to: 'fraispros#index'
  get 'duplicate/:id', to: 'fraispros#duplicate', as: 'duplicate'
  resources :fraispros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
