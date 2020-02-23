Rails.application.routes.draw do

  root 'home#top'
  get 'sessions/new'
  get 'users/new'
  get    'folders'   => 'folders#index'

  resources :users do
    resources :folders do
      resources :posts
    end
  end 
  
  # resources :users
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end