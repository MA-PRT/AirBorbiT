Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :rockets do
    collection do
      get :myrockets
    end
    resources :bookings, only: [:new, :create]
  end

  # Bookings routes
  resources :bookings, only: [:index, :show, :edit, :update, :destroy] do
    collection do
      get :mine
    end
  end
end
