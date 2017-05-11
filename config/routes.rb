Rails.application.routes.draw do

  root 'products#index'
  devise_for :users
  namespace :admin do
  resources :products

  end

  resources :carts do
  collection do
  delete :clean
end
   end
  resources :products do
  resources :cart_items
  member do
     post :add_to_cart
   end
 end
 root 'products#index'
end
