Rails.application.routes.draw do
  root to: 'folders#index'
  resources :folders, only:[:new,:edit,:show]
end
