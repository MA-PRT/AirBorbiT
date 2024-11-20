Rails.application.routes.draw do
  devise_for :users
  root to: "rockets#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :users, only: [:show] do
    resources :rockets do
      collection do
        get "myrockets"
      end
    end

    resources :bookings, only: [:index, :show, :edit, :update]
  end


  resources :rockets, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end

end
