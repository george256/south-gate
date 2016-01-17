SouthGate::Application.routes.draw do
  devise_for :admins
  root :to => 'home#index'
  resources :issues
  resources :map
  resources :approve
end
