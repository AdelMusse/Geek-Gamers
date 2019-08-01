Rails.application.routes.draw do
  # get 'index' to: 'games#index'
  resources :games
  root to: "home#home_page"
  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # devise_scope :user do
  #   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
  get 'users_home', to: 'users_home#users_home'
  get 'date_time', to: 'date_and_time#date_time'
  get 'signin', to: "registrations#signin"
  get 'signup', to: "registrations#signup"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end