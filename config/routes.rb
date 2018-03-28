Rails.application.routes.draw do

  #define root address
  root 'pages#index'

  #define routes for pages
  get 'index' => 'pages#index'
  get 'home' => 'pages#home'
  get 'profile' => 'pages#profile'
  get 'explore' => 'pages#explore'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
