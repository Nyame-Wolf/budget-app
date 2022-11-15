Rails.application.routes.draw do
  resources :occurrences
  devise_for :users
  root "splash_screen#index"
  resources :categories
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
