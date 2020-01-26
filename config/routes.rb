Rails.application.routes.draw do
  
  root to: 'home#top'

  resources :folders do
    resources :posts
  end
end