Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :products do
    delete 'delete_image/:image_id', on: :member, to: 'posts#delete_image', as: 'delete_image'
  end

  resources :stock_by_locations
  resources :details_dispatch_orders
  resources :details_purchase_orders
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
