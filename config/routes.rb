Rails.application.routes.draw do
  resources :posts
  resources :titles
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  get 'home/index'
  # devise_for :users
  resources :natures
  
  # root to: "home#index"

  root 'plants#enter'
  get 'plants/signup'

  get 'plants/blog'
  get 'plants/about'
  get 'plants/landing'
  get 'plants/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
