Rails.application.routes.draw do
  root 'top#index'
  devise_for :users
  
  resources :users, only: [:edit, :update, :destroy]
  resources :shops, only: [:new, :create]do
    resources :top, only: [:index]
  end

end
