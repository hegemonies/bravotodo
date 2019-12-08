Rails.application.routes.draw do
  devise_for :users
  resources :todos

  root 'todos#index'

  namespace :user do
    get 'todos/index' => 'todos#index'
  end
end
