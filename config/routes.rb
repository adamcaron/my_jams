Rails.application.routes.draw do
  resources :songs # get all 8 of those RESTful routes
  resources :users, only: [:new, :create, :show]
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  root to: "welcome#index"
end
