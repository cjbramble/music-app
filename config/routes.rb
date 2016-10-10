Rails.application.routes.draw do
  get    '/auth/:provider'          => 'omniauth#auth',    as: :auth
  get    '/auth/:provider/callback' => 'session#create'
  get    '/auth/failure'            => 'session#failure'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get 'songs/new'

  root 'welcome#index'
  resources :songs
  resources :albums
  resources :artists
end
