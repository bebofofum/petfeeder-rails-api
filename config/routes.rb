Rails.application.routes.draw do
  resources :owners
  resources :feedings
  resources :pets
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
