Rails.application.routes.draw do
  get '/users', to: 'users#index'
  get '/friend_requests', to: 'friendships#friend_requests'
  get '/friends', to: 'friendships#friends'

  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }

  resources :users, only: [:show] do
    resource :friendship
    resources :posts do
      resources :comments
      resources :likes
    end
  end

  root to: 'static_pages#home'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    delete 'logout', to: 'devise/sessions#destroy'
  end
end
