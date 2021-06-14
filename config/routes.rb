Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # get 'user/new'
  root 'static_pages#home'
  devise_for :users,
  controllers: {omniauth_callbacks: 'omniauth_callbacks'}
end
