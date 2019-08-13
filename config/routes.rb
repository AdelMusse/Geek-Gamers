Rails.application.routes.draw do
  get 'payments/success'
  get 'payments/cancel'
  get 'charges/new'
  get 'charges/create'
  resources :charges, only: [:new, :create]
  resources :payments
  devise_for :users, controllers: {registrations: 'users/registrations', sessions: 'users/sessions' ,omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :games
  root to: "home#home_page"
  get 'user_games', to: 'users_home#user_games'
  get 'users_home', to: 'users_home#users_home'
  get 'date_time', to: 'date_and_time#date_time'
  get 'signin', to: "registrations#signin"
  get 'signup', to: "registrations#signup"
  get '_forms', to: "forms#_forms"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end