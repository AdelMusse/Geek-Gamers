Rails.application.routes.draw do
  get 'users_home', to: 'users_home#users_home'
  get 'date_time', to: 'date_and_time#date_time'
  get 'signin', to: "registrations#signin"
  get 'signup', to: "registrations#signup"
  get "home_page", to: "home#home_page"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
