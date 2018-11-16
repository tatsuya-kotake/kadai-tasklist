Rails.application.routes.draw do

  get 'toppages/index'
  root to:'toppages#index'
  
  resources :tasks
  resources :users, only: [:new, :create]
  resources :login,only: [:new,:create,:destroy]
end
