Rails.application.routes.draw do

  resources :users

  resources :rides
  
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"
  
  root 'welcome#index'

end
