# config/routes.rb

Rails.application.routes.draw do
  root to: 'movies#index'

  resources :movies, only: [:index, :show, :new, :create, :destroy]
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
