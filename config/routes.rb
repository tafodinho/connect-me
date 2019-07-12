Rails.application.routes.draw do
  get 'friendships/new'
  get 'friendships/create'
  get 'friendships/update'
  get 'friendships/destroy'
  get 'likes/index'
  get 'likes/new'
  get 'likes/create'
  get 'likes/update'
  get 'likes/destroy'
  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/create'
  get 'comments/update'
  get 'comments/delete'
  get '/users', to: 'users#index'
  get '/friend_requests', to: 'friendships#friend_requests'
  
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
