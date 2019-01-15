Rails.application.routes.draw do

  devise_for :users
  root controller: :articles, action: :index

  resources :articles, only: [:index, :show]

  namespace :cms do
    resources :articles, only: [:index, :new, :create, :edit, :update, :destroy]
  end

end
