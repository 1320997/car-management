Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "car_makers#index"

  resources :car_makers do
    resources :cars, shallow: true
  end

  resources :cars, only: [:index]
end
