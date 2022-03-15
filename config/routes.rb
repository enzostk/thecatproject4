Rails.application.routes.draw do
  devise_for :users
  resources :products
  root to: "main#index"
  resources :join_table_products_carts, only: [:create, :update, :destroy]
  resources :carts, except: [:index, :new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
