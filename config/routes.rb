# frozen_string_literal: true

Rails.application.routes.draw do
  root    'static_pages#home'
  get     'help',         to: 'static_pages#help'
  get     'about',        to: 'static_pages#about'
  get     'contact',      to: 'static_pages#contact'
  get     'signup',       to: 'users#new'
  post    'signup',       to: 'users#create'
  get     'login',        to: 'sessions#new'
  delete  'logout',       to: 'sessions#destroy'
  get     'search',       to: 'photos#index'
  get     'favorites',    to: 'photos#favorite'
  delete  'delete',       to: 'photos#destroy'
  get     'galleries',    to: 'galleries#index'
  get     'new_albums',       to: 'albums#new'
  post    'new_albums',       to: 'albums#create'

  resources :users
  resources :photos
  resources :sessions
  resources :albums
  resources :album_photos
end
