Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  } 

  root 'home#top'
  resources :users, only: [:show]

  get    'game/:id'  => 'folders#game'

  resources :folders do
    resources :posts
  end 
end