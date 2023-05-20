Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :users
  resources :users
  resources :computers,  param: :user_id

  # Defines the root path route ("/")
  # root "articles#index"
end
