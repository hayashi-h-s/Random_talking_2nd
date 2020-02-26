Rails.application.routes.draw do

  devise_for :users

  root 'home#top'
  resources :users, only: [:show]
  # get 'sessions/new'
  # get 'users/new'
  # resources :folders
  resources :folders do
    resources :posts
  end 
  # resources :posts

  # # resources :users
  
  # get    'login'   => 'sessions#new'
  # post   'login'   => 'sessions#create'
  # delete 'logout'  => 'sessions#destroy'

end