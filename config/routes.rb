Rails.application.routes.draw do

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  
  resources :users, only: [:create, :show, :index]
  resources :thoughts
  resources :folders
end





#   resources :sessions, only: [:create]
#   resources :registrations, only: [:create]
#   resources :logout, to: "sessions#logout"
#   get :logged_in, to: "sessions#logged_in"
#   resources :thoughts
#   resources :folders
#   resources :users
#   post '/login', to: 'users#show'
#   get '/login', to: 'users#show'
#   # get './login', to: 'sessions#create'
#   get './logout', to: 'sessions#logout'
#   get './signup', to: 'registrations#create'
  
# root to: "/"
 

#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end
