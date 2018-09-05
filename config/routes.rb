Rails.application.routes.draw do
  root 'states#index'
  devise_for :users
  resources :states
end
