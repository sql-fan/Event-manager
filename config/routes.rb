Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :events
  # get "users/:id", to: "users#show", as: "user"
  # get "users/:id", to: "users#show", as: "user"

  root "events#index"
end
