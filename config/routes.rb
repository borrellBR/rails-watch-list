# config/routes.rb

Rails.application.routes.draw do
  root to: 'movies#index'

  resources :movies, only: [:index, :show, :new, :create, :destroy]
end
