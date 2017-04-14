Rails.application.routes.draw do
  root 'aircrafts#index'

  resources :aircrafts, only: [:index] do
    collection do
      post :takeoff
      get :takeoff_queue
    end
  end

  get 'stats', to: 'statuses#index'
end
