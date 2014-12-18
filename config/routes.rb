Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  root 'pages#home'

  get '/about',      to: 'pages#about'
  get '/ad-example', to: 'ads#show'
  get '/user-example', to: 'users#show'

  resources :ads,   only: [:index, :new]
end
