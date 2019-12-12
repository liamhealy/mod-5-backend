Rails.application.routes.draw do
  resources :stream_followers
  resources :responses
  resources :posts
  resources :streamers
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
