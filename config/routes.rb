Rails.application.routes.draw do
  root to: 'folders#index'

  resources :folders do
    resources :posts
  end
end