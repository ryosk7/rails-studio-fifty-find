Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  get "studios/owner_list", to: "studios#owner_list"

  resources :studios, only:[:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only:[:new, :create]
  end

  resources :bookings, only:[:index, :show, :destroy]
  resources :offers, only:[:index, :show] do
    member do
      patch :accept
      patch :reject
    end
  end
end
