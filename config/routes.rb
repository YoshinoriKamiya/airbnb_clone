Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root 'static_pages#home'

  resources :users, only: [:show]
  resources :rooms
 
  resources :rooms do
    resources :images, only: [:create, :destroy]
    resources :bookings
    member do
      get :listing
      get :price
      get :description
      get :photo
      get :amenities
      get :location
      get :check_current_bookings
      get :review_booking
    end
  end
end
