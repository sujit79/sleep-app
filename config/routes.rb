Rails.application.routes.draw do
  resources :user_sleeps
  resources :users
  resources :user_associations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
