Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'

  resources :users do
    resources :pokemons, only: [:show]
  end

  resources :pokemons do
    post 'dashboard', to: 'wishlists#add_to_wishlist'
    delete 'dashboard', to: 'wishlists#remove_from_wishlist'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
