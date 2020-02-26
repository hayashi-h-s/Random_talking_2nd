Rails.application.routes.draw do

  devise_for :users
  root 'home#top'
  resources :users, only: [:show]
  # get 'sessions/new'
  # get 'users/new'
  get 'folders'   => 'folders#index'
  get 'folders/new'   => 'folders#new'
  # resources :folders
  resources :users do
    resources :folders do
      # resources :posts
    end
  end 
  resources :posts

  # # resources :users
  
  # get    'login'   => 'sessions#new'
  # post   'login'   => 'sessions#create'
  # delete 'logout'  => 'sessions#destroy'

end