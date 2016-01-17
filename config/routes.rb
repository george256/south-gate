SouthGate::Application.routes.draw do
  root :to => 'home#index'
  resources :issues
  resources :map
end
