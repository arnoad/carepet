Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users
  # root to: "pages#home"

  get '/profile', to: 'pages#profile'

  devise_scope :user do
    # Defines the root path route ("/")
    root "carers#index"

    # get '/carers', to: 'users#index'
    # get '/carers/:id', to: 'users#show', as: 'carer'

    resources :carers, only: %i[index show] do
      resources :requests, only: %i[new create]
    end

    resources :requests, only: %i[index show edit update destroy]
    resources :pets
  end

  # resources :pets
  resources :chatrooms, only: %i[show] do
    resources :messages, onlt: %i[create]
  end

  resources :forums, only: %i[index show new create] do
    resources :posts, only: %i[create]
  end

  resources :users do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: [:destroy]
end
