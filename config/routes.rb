Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :carers do
    resources :requests
    resources :pets
end
