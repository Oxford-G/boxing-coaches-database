Rails.application.routes.draw do
  resources :trainers, only: [:index, :show]

  resources :users, only: [:create, :show, :destroy] do
    resources :appointments, only: [:index, :create, :destroy]
  end

  get 'login', to: 'users#look';
end
