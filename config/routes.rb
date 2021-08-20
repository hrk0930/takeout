Rails.application.routes.draw do

  devise_for :users
  get 'menus/index'
  root to: "tops#index"
  resources :menus
  resources :users,    only: [:show, :edit, :update, :destroy]
  end
