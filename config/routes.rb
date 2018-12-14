Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :products
  
  resource :cart, only: [:show] do
  get "add", path: "add/:id"
  get :checkout
  get :clearCart
  end
  
  resources :orders, only: [ :index, :show, :create ]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'products#index'
end
