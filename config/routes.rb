# frozen_string_literal: true

Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :posts
  resources :natures

  # devise_for :users
  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  post '/cart', to: 'natures#cart'
  
  root 'plants#home'
  get 'plants/signup'
  get 'plants/blog'
  get 'plants/about'
  get 'plants/landing'
  get 'plants/home'
  post 'posts/new'
  get 'cart', to: 'natures#carts' 
  get 'posts/page/hello', to: 'posts#hello'
  resources :posts do
    member do
      delete :delete_file
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
