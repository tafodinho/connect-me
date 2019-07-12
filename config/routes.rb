Rails.application.routes.draw do
  get '/users', to: 'users#index'
  get '/friend_requests', to: 'friendships#friend_requests'
  get '/friends', to: 'friendships#friends'
  
  resources :posts
  resources :comments
  resources :likes
  resource :friendship

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users, only: [:show]

  root to: 'static_pages#home'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    delete 'logout', to: 'devise/sessions#destroy'
  end 
end
