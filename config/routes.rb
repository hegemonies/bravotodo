Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :todos do
    member do
      patch :complete
    end
  end

  patch 'complete', to: 'todos#complete'

  root 'todos#index'

  namespace :user do
    get 'todos/index' => 'todos#index'
  end
end
