Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # get 'restaurants', to: 'restaurants#index'

  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # ReviewsController
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :new, :create]
      # get 'reviews', to: 'reviews#index'
      # get 'reviews/new', to: 'reviews#new', as: 'new_review'
      # post 'reviews', to: 'reviews#create', as: 'create_review'
  end

  # Un visiteur peut ajouter un nouvel avis à un restaurant.
  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"


end
