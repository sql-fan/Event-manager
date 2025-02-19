Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :events
  resources :event_users, only: [ :new, :create, :destroy ]

  root "events#index"
end
