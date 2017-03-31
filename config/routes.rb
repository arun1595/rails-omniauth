Rails.application.routes.draw do
  resources :users
  root to: 'visitors#index'

  get '/signin' => 'sessions#new', as: :signin
  get '/signout' => 'sessions#destroy', as: :signout

  get '/auth/:provider/callback' => 'sessions#create'
  get '/auth/failure' => 'sessions#failure'

  get '/contacts/fetch'
  get '/contacts/gmail/callback' => 'contacts#index'
end
