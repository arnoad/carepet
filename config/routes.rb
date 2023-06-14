Rails.application.routes.draw do
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
  resources :pets

end
