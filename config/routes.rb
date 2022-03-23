Rails.application.routes.draw do
  namespace :api do
    resources :appointments
    resources :patients
    resources :physicians
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
