Rails.application.routes.draw do
  resources :clients
  post 'users/authenticate' => 'auth#authenticate'
  get 'users/me' => 'auth#profile'
  post 'users/validate_token' => 'auth#validate_token'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
