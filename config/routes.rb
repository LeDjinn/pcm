Rails.application.routes.draw do
  resources :articles do
    collection do
      post :import
    end
  end
  resources :categories
  resources :individuals
  resources :companies
  devise_for :users
  root 'pages#home'
  get 'pages/dashboard'
  get 'pages/database'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
