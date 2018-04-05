Rails.application.routes.draw do
  # get 'session/new'
  #
  # get 'users/new'
  #
  # get 'pages/home'

  root :to => 'pages#home'

  resources :users, :only => [:new, :create]

  resources :books #Plural
  resources :authors
  get '/login' => 'session#new' #Sign in form
  post '/login' => 'session#create' #Sign in action
  delete '/login' => 'session#destroy' #Sign out
end
