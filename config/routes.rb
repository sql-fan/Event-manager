Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :events
  resources :event_users

  root "events#index"
end
