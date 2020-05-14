Rails.application.routes.draw do
  root 'top#index'
  devise_for :users
  

  resources :user, only: [:index,:new,:create]
  root 'top#index'
end
