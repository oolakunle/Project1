Rails.application.routes.draw do
  get 'users/new'

  get 'pages/home'

  root :to => 'pages#home'

  resources :users, :only => [:new, :create]

  get '/login' => 'session#new' #Sign in form
  post '/login' => 'session#create' #Sign in action
  delete '/login' => 'session#destroy' #Sign out
end
