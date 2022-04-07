Rails.application.routes.draw do
  resources :bill_drinks
  resources :bill_foods
  resources :bills
  resources :tables
  resources :users
  resources :waiters
  resources :drinks
  resources :foods, only: [:index, :show, :create, :update, :destroy]
  resources :alimento_cuenta
  resources :alimentos
  resources :bebidas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
