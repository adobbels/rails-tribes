Rails.application.routes.draw do

  get 'errors/not_found'

  get 'errors/internal_server_error'

  ActiveAdmin.routes(self)
   devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :profiles
  resources :houses do
    resources :reviews, only: [:new, :create]
    resources :bookings
  end
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  mount Attachinary::Engine => "/attachinary"
end
