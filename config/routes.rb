Rails.application.routes.draw do
  get 'home/top'
  root to: 'folders#index'

  resources :folders do
    resources :posts
  end
end