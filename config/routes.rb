Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    delete '/users/sign_out', to: 'devise/sessions#destroy'
  end
  resources :pumps do
    resources :maintenances
  end
  resources :maintenance_reasons
  resources :clients
  
  root 'pumps#index'
end