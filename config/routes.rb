Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  resources :profiles
  resources :houses do
    resources :reviews, only: [:new, :create]
    resources :bookings
  end
  mount Attachinary::Engine => "/attachinary"
end
