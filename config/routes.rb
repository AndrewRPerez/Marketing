Rails.application.routes.draw do
  resources :articles, only: [:show, :index, :new, :create, :destroy]
  resources :blog, only: [:show, :index]
  root 'blog#index'
end
