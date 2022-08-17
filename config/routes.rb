# frozen_string_literal: true

Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/show'
  resources :posts
  resources :natures
  resources :reviews
  # devise_for :users
  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  
<<<<<<< HEAD
  root 'plants#home'
=======
  root 'plants#landing'
  get 'plants/signup'
>>>>>>> 9e3b0a54b95286ede46367d7a145ea4aa0c58e48
  get 'plants/blog'
  get 'plants/about'
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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
