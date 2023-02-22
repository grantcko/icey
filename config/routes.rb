Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :jewelries, only: %i[index show new create] do
    resources :rentals, only: %i[create]
  end
  resources :rentals, only: %i[index update]

  namespace :owner do
    resources :rentals, only: :index
  end
end
