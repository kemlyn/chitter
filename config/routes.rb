Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :posts do
    resources :comments, only: %i[new create destroy] do
      resources :replies, only: %i[new create destroy]
    end
  end

  root to: 'pages#index'
  match '/home', to: 'pages#home', via: [:get]
end
