Rails.application.routes.draw do
  get "posts/index"
  get "posts/new"
  get "posts/create"
  get "posts/show"
  devise_for :users
  resources :posts

  get "up" => "rails/health#show", as: :rails_health_check

  root "posts#index"
end
