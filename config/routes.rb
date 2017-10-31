Rails.application.routes.draw do

  resources :users, only: [:index, :create, :show] do
    resources :games, only: [:index, :create]
  end

  resources :games, only: [:show] do
    resources :guesses, only: [:create, :index]
    resources :pegs, only: [:create]
  end

  resources :guesses do
    resources :pegs, only: [:create]
  end

  #sessions
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

end
