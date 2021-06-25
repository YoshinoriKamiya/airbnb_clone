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
    member do
      get :listing
      get :price
      get :description
      get :photo
      get :amenities
      get :location
    end
  end
end
