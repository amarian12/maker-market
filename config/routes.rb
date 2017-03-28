Rails.application.routes.draw do
  get 'rentals/new'

  get 'rentals/create'

  devise_for :users
  resources :profiles, only: [ :new, :create, :update, :edit, :show]
  resources :reviews, only: [ :new, :create ]
  resources :products do
    resources :rentals, only: [ :new, :create, :update, :edit ]
  end

  root to: 'products#index'

end
