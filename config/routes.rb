Rails.application.routes.draw do
  root :to => "pages#home"

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  resources :orders
  resources :delivery_infos
  resources :pizzas
  resources :customers
  resources :recipes
  resources :crusts
  resources :ingredients

end
