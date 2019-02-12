Rails.application.routes.draw do
  devise_for :admin_users
  resources :book_products
  resources :products
  resources :buyers

  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
