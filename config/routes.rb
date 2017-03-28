Rails.application.routes.draw do
  get 'profiles/edit'

  get 'profiles/new'

  get 'profiles/show'

  devise_for :users
  resources :users, only: [ :new, :create, :update, :edit, :show]
  resources :reviews, only: [ :new, :create ]
  resources :products do
    resources :rentals, only: [ :new, :create, :update, :edit ]
  end

  root to: 'products#index'

end
