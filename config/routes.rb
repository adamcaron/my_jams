Rails.application.routes.draw do
  resources :songs # get all 8 of those RESTful routes
  resources :users, only: [:new, :create, :show]

  namespace :admin do
    resources :users
  end

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  root to: "welcome#index"
end
