# frozen_string_literal: true

Rails.application.routes.draw do

  # Authentication
  devise_for :users, {

  }

  # Application
  resources :places, only: [:show]
  resources :maps,   only: [:index]
end
