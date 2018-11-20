Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :posts

  root to: 'pages#index'
  match '/home', to: 'pages#home', via: [:get]
end
