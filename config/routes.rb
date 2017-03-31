Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: "registrations"}
  resources :profiles, only: [ :update, :edit, :show]
  resources :products do
    resources :rentals, only: [ :new, :create, :update, :edit ] do
      resources :reviews, only: [ :new, :create ]
    end
  end

  root to: 'products#index'

end
