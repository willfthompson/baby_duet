Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show]
  post "/products/add/:id", to: "products#add_to_basket", as: "add_to_basket"
  post "/products/remove/:id", to: "products#remove_from_basket", as: "remove_from_basket"

  resources :baskets, only: :show


end
