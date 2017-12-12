Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  resource :profile
  resources :houses do
    resources :reviews, only: [:new, :create]
    resources :bookings
  end
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create, :destroy]
end

  mount Attachinary::Engine => "/attachinary"
end
