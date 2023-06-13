Rails.application.routes.draw do
  devise_for :users
  # root to: "pages#home"

  devise_scope :user do
    # Defines the root path route ("/")
    root "carers#index"

    # get '/carers', to: 'users#index'
    # get '/carers/:id', to: 'users#show', as: 'carer'

    resources :carers do
      resources :requests, only: %i[new create]
    end

    resources :requests, only: %i[show index edit update destroy]
    resources :pets
  end
end
