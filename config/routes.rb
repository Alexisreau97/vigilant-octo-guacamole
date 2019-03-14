# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'texts#index'
  resources :texts, only: %i[index create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
