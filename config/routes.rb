Rails.application.routes.draw do
  resources :thoughts
  resources :folders
  resources :users
  get './login', to: 'sessions#create'
  get './logout', to: 'sessions#logout'
  get './signup', to: 'registrations#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
