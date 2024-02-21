Rails.application.routes.draw do
  resources :reservations
  resources :rooms
  resources :hotels
  devise_for :users
  root to: 'hotels#index'
  resources :hotels do
    collection do
      get :search
    end
    resources :rooms do
      resources :reservations
    end
  end
end


