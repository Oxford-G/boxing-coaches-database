Rails.application.routes.draw do
  Rails.application.routes.draw do
    resources :trainers, only: [:index, :show] do
      resources :appointments, only: [:index, :create, :destroy]
    end
  
    resources :users, only: [:create, :show, :destroy] do
      resources :appointments, only: [:index, :create, :destroy]
    end
  end
end
