Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  resources :profiles
  resources :houses do
    resources :reviews, only: [:new, :create]
    resources :bookings
  end
  # get 'accept_booking/:booking', to: 'bookings#accept', as:"accept_booking"
end
