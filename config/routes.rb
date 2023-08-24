# frozen_string_literal: true

Rails.application.routes.draw do

  # Authentication
  devise_for :users, {}

  # Dashboard
  namespace :dashboard do
    root to: 'home#index'
    
    resources :place_types
    resources :places
    resources :users
  end

  # Application
  resources :places, only: [:show]
  resources :maps,   only: [:index], param: :ucode
end
