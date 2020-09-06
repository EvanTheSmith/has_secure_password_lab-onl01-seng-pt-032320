Rails.application.routes.draw do

  get '/signup' => 'users#new'        # Sign Up Form
  post '/signup' => 'users#create'    # Sign Up Post Path

  get '/login' => 'sessions#create'  # Log In Form
  post '/login' => 'sessions#create'  # Log In Post Path

  root 'welcome#home'

end
