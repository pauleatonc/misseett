Rails.application.routes.draw do
  root to: 'landing#index'
  resources :brands do
    resources :products, only: %i[destroy edit show]
  end

  resources :projects do
    member do
      post 'status_opened', to: 'projects#status_opened'
      post 'status_closed', to: 'projects#status_closed'
    end
    resources :products, only: %i[index show] do
      resources :specifications, only: %i[create destroy]
    end
  end

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  get 'user/show'
  get 'specifications/show'
  resources :products, only: %i[new create index]
  resources :events
  resources :users, only: :show
  resources :states, only: :index
  resources :cities, only: :index
end
