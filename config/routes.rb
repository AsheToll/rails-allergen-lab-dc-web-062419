Rails.application.routes.draw do
  resources :allergens
  resources :recipe_ingredients
  resources :recipes
  resources :ingredients
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
