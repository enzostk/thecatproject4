Rails.application.routes.draw do
  get 'join_table_products_carts/create'
  get 'join_table_products_carts/update'
  get 'join_table_products_carts/destroy'
  get 'carts/show'
  get 'carts/create'
  get 'carts/update'
  get 'carts/destroy'
  devise_for :users

  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
