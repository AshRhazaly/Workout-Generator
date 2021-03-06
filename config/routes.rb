Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :workouts
    end
  end

  resources :users do
    member do
      get 'api_token'
    end
  end
  root "workouts#index"

  resources :workouts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
