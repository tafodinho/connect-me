Rails.application.routes.draw do
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
  
  resources :posts
  resources :comments
  resources :likes

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users, only: [:show]

  root to: 'static_pages#home'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    delete 'logout', to: 'devise/sessions#destroy'
  end 
end
