Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  get 'sessions/new'
  resources :blogs
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :show]
  resources :relationships, only: [:create, :destroy]
end
