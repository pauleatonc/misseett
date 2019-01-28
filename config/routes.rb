Rails.application.routes.draw do
  root to: 'landing#index'
  resources :brands do
    resources :products, only: %i[destroy edit show]
  end
  get 'projects/getdocument', format: 'docx'
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
  resources :brand_plans
  resources :orders, only: %i[show create destroy index] do
    member do
      post 'order_status', to: 'orders#order_status'
    end
  end
  # resources :events -------->   Por el momento no estoy ocupando events.
  resources :users, only: :show
  resources :states, only: :index
  resources :cities, only: :index
  resources :billings, only: :index do
    collection do
      get 'pre_pay'
      get 'execute'
    end
  end
end
