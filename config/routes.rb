Rails.application.routes.draw do
 root to: 'tasks#index'

  resources :tasks
  resources :users, only: [:new, :create]
  resources :login,only: [:new,:create,:destroy]
end
