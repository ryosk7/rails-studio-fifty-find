Rails.application.routes.draw do
  get 'studios/index'

  get 'studios/show'

  devise_for :users
  root to: 'pages#home'

  resources :studios, only:[:index, :show, :new, :create] do
    resources :bookings, only:[:new, :create]
  end

  resources :bookings, only:[:index, :show, :destroy]
  resources :offers, only:[:index] do
    member do
      patch :accept
      patch :reject
    end
  end
end
