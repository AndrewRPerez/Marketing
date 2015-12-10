Rails.application.routes.draw do
  resources :articles do
    resources :comments, only: :create
  end
  resources :blog, only: [:show, :index]
  root 'blog#index'
end
