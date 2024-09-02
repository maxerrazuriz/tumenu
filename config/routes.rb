Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "profiles/:id", to: "users#show", as: "profile"
  # Defines the root path route ("/")
  # root "posts#index"


  resources :meals, except: [:destroy] do
    resources :user_meals, only: [:create]
  end
  resources :meal_ingredients, only: [:create, :index]
  resources :user_diets, only: [:create, :index, :destroy]
  resources :diets, only: [:create, :index]
end
