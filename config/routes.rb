Rails.application.routes.draw do
  resources :neighborhoods
  resources :users
  resources :menus
  resources :meal_types
  resources :dishes
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
