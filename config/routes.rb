Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  devise_for :users
  root controller: :articles, action: :index
  resources :articles, only: [:index, :new, :create]

end
