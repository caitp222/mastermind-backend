Rails.application.routes.draw do
  # users
  resources :users, only: [:create, :show] do
    resources :games
  end

  #sessions
  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

end
