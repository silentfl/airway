Rails.application.routes.draw do
  root 'aircrafts#index'

  resources :aircrafts, only: [:show, :index] do
    collection do
      post :takeoff
    end
  end
end
