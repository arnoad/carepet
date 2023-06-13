Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :carers do
    resources :requests, only: %i[new create]
  end

  resources :requests, only: %i[show index edit update destroy]
  resources :pets
end
