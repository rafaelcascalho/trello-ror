# frozen_string_literal: true

Rails.application.routes.draw do
  resources :boards do
    resources :lists do
      resources :cards
    end
  end

  root to: 'boards#index'
end
