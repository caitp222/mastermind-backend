Rails.application.routes.draw do
  # users
  resources :users, only: [:create, :show]

  # games
  resources :games

  #sessions
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

end
