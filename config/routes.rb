Rails.application.routes.draw do
  resources :events
  get 'carts/show'
  resources :products do
    resources :carts, only: :create
  end

  resources :projects
  resources :states, only: :index
  resources :cities, only: :index

  get 'landing/index'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  get 'user/show'
  resources :users, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "landing#index"

end
