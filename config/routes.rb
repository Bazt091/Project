Rails.application.routes.draw do
  resources :info_dispatch_orders
  resources :info_purchase_orders
  resources :locations
  resources :products
  get 'welcome/index'
  resources :providers
  resources :clients
  devise_for :users
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
end
