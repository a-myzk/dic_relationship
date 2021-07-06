Rails.application.routes.draw do
  get 'sessions/new'
  resources :blogs
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :show]
end
