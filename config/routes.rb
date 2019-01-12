Rails.application.routes.draw do
  get 'articles/index'
  devise_for :users
  root controller: :articles, action: :index
end
