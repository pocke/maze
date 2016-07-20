Rails.application.routes.draw do
  resources :subscribes
  resources :categories
  resources :posts
  resources :post_sources
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
