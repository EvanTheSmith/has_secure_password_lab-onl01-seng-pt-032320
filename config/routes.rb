Rails.application.routes.draw do
  root 'welcome#home'

  # get '/signup', to: 'users#new'
  # post '/signup', to: 'users#create'
  resources :users, only: [:new, :create]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
