Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:new, :create]

  resources :books
  resources :authors
  get '/login' => 'session#new' #Sign in form
  post '/login' => 'session#create' #Sign in action
  delete '/login' => 'session#destroy' #Sign out
end
