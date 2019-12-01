Rails.application.routes.draw do
  devise_for :users
  resources :todos
  get 'welcome/index'

  root 'welcome#index'
end
