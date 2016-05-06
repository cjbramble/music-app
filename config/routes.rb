Rails.application.routes.draw do
  devise_for :users
  get 'songs/new'

  root 'welcome#index'
  resources :songs
  resources :albums
  resources :artists
end
