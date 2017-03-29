Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: "registrations"}
  resources :profiles, only: [ :update, :edit, :show]
  resources :reviews, only: [ :new, :create ]
  resources :products do
    resources :rentals, only: [ :new, :create, :update, :edit ]
  end

  root to: 'products#index'

end
