# frozen_string_literal: true

Rails.application.routes.draw do
  root 'html_pages#home'
  get '/about', to: 'html_pages#about'
  get '/contact', to: 'html_pages#contact'
  get '/help', to: 'html_pages#help'
  get '/signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users
end
