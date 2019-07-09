Rails.application.routes.draw do
  resources :posts
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'static_pages#home'

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    delete 'logout', to: 'devise/sessions#destroy'
  end 
end
