Rails.application.routes.draw do
  # users & games
  resources :users, only: [:index, :create, :show] do
    resources :games, only: [:index, :create]
  end

  resources :games, only: [:show]

  #sessions
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

end
