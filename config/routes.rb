Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :blogs, only: [:index, :show]
  resources :products, only: [:index, :show]

  post "/products/add/:id", to: "products#add_to_basket", as: "add_to_basket"
  get "/basket/decrement/:id", to: "baskets#decrement_basket", as: "decrement_basket"
  get "/basket/increment/:id", to: "baskets#increment_basket", as: "increment_basket"
  get "/basket", to: "baskets#show_basket", as: "basket"
  get "/about", to: "pages#about"
end
