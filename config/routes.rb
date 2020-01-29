Rails.application.routes.draw do
  resources :portfolios
  resources :watchitems
  resources :users
  resources :currencies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
