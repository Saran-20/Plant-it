# frozen_string_literal: true

Rails.application.routes.draw do

  resources :posts
  resources :natures
  resources :reviews
  # devise_for :users
  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  
  root 'plants#landing'
  get 'plants/signup'
  get 'plants/blog'
  get 'plants/about'
  post 'plants/about'
  post 'users/sign_up'
  get 'plants/home'
  post 'posts/new'
  get 'cart', to: 'natures#carts' 
  get 'posts/page/hello', to: 'posts#hello'
  resources :posts do
    member do
      delete :delete_file
    end
  end

  post '/cart', to: 'natures#cart'

  post 'review', to: 'reviews#create'

  get 'del', to: 'natures#del'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
