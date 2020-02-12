Rails.application.routes.draw do
  
  get 'users/new'
  root to: 'home#top'

  resources :folders do
    resources :posts
  end

  resources :users
  
end