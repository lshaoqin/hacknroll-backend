Rails.application.routes.draw do
  resources :guesses
  resources :users
  resources :rounds
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/game', to: 'rounds#index'
  post '/game', to: 'guesses#add'

  get '/get_id', to: 'users#create'
end
