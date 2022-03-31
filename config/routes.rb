Rails.application.routes.draw do
  resources :alimento_cuenta
  resources :alimentos
  resources :bebidas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
