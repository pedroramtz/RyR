Rails.application.routes.draw do
  resources :pioneers
  resources :users
  resources :comments
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
