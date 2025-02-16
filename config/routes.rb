Rails.application.routes.draw do
  devise_for :users
  get "users/:id", to: "users#show", as: "user"

  root "events#index"
end
