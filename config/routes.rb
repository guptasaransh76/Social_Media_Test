Rails.application.routes.draw do

  devise_for :users
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :posts

  resources :relationships

  #define root address
  root 'pages#index'

  #define routes for pages
  get 'index' => 'pages#index'  # over-rides default routes
  get 'home' => 'pages#home'
  get '/user/:id' => 'pages#profile'
  get 'explore' => 'pages#explore'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
