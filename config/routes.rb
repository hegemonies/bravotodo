Rails.application.routes.draw do
  resources :todos
  get 'welcome/index'

  root 'welcome#index'
end
