Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  resources :thoughts
  resources :folders
  resources :users
  post '/login', to: 'users#show'
  # get './login', to: 'sessions#create'
  get './logout', to: 'sessions#logout'
  get './signup', to: 'registrations#create'
  
  root to: "static#home"
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
