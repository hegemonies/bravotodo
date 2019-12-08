Rails.application.routes.draw do
  devise_for :users
  resources :todos
  get 'welcome/index'

  root 'todos#index'

  namespace :user do
    get 'todos/index' => 'todos#index'
  end
end
