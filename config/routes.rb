Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Defines the root path route ("/")
  # root "articles#index"

  devise_scope :user do
    get '/carers', to: 'users#index'
  end
  resources :carers do
    resources :requests, only: %i[new create]
  end

  resources :requests, only: %i[show index edit update destroy]
  resources :pets
end
