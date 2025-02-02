Rails.application.routes.draw do
  get 'private/test'
  get '/current_user', to: 'current_user#index'
  resources :owners
  resources :feedings
  resources :pets do
    resources :feedings
  end
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
