Rails.application.routes.draw do
  get "questions/new"
  get "questions/create"
  get "home/index"
  get "/workout_days/day/:day", to: "workout_days#show", as: :day_workout

  # get "users/new"
  # get "users/create"
  resources :users, only: [ :new, :create ]
  resource :session
  resources :passwords, param: :token
  resources :questions, only: [:new, :create]
  resources :workout_days, only: [:show, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "home#index"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  delete "/sign_out", to: "sessions#destroy", as: :sign_out

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
