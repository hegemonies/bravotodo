Rails.application.routes.draw do
  devise_for :users
  resources :todos do
    member do
      patch :complete
    end
  end

  root 'todos#index'

  namespace :user do
    get 'todos/index' => 'todos#index'
  end
end
