Rails.application.routes.draw do

  resources :articles, only: [:show, :index, :new, :create, :destroy]

  root 'welcome#index'
end
