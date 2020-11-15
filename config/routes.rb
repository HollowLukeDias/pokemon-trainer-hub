Rails.application.routes.draw do
  root 'pages#home'
  get 'home', to: 'pages#about'

  resources :users, except: [ :new ]
  get 'signup', to: 'users#new'
end
