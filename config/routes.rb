Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  
  

  resources :user, only: [:index,:new,:create]
  root 'top#index'
end
