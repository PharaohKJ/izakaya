Rails.application.routes.draw do
  resources :meetup_shops
  resources :meetups
  resources :points
  resources :reviews
  resources :shops
  resources :users
  get 'auth/:provider/callback', to: 'sessions#create'
  root to: 'top#index'
end
