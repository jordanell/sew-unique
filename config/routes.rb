Rails.application.routes.draw do
  root to: 'root#index'

  resources :contact, only: :create
end
