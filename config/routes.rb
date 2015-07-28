Rails.application.routes.draw do
  resources :songs # get all 8 of those RESTful routes
  resources :artists
end
