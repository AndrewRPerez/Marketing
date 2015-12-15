Rails.application.routes.draw do
  resources :articles, only: [:show, :index, :new, :create, :destroy, :edit, :update]
  resources :blog, only: [:show, :index]
  root 'blog#index'
end
