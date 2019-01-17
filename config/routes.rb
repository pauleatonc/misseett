Rails.application.routes.draw do
  resources :brands do
   resources :products, only: [:destroy, :edit, :show]
 end

 resources :products, only: [:new, :create, :index]

  get 'specifications/show'
  resources :events

  resources :projects do
    member do
      post 'status_opened', to: 'projects#status_opened'
      post 'status_closed', to: 'projects#status_closed'
    end
  end

  resources :projects do
   resources :products, only: [:index, :show] do
     resources :specifications, only: [:create, :destroy]
    end
  end

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
