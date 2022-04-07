Rails.application.routes.draw do
  resources :bill_drinks
  resources :bill_foods
  resources :bills
  resources :tables
  resources :users, only: [:index, :show ,:create, :update, :destroy]
  resources :drinks, only: [:index, :show, :create, :update, :destroy]
  resources :foods, only: [:index, :show, :create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
