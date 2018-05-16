Rails.application.routes.draw do
  resources :health_checks
  root to: 'health_checks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
