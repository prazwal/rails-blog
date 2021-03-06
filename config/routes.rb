Rails.application.routes.draw do

  root  'pages#home'
  get 'about', to: 'pages#about'

  resources :articles

  get '/signup' => 'users#new'
  resources :users, except: [:new]

  resources :categories, except: [:destroy]

  post '/comments/:id' => 'comments#create', as: 'comment_path'

  get '/login' => 'session#new'
  post '/login'  => 'session#create'
  delete '/logout' => 'session#destroy'
end
