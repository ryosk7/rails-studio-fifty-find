Rails.application.routes.draw do
  devise_for :users
  get 'pages' to: 'pages#home'
  post 'studios' to: 'studios/create'
  get 'users' to: 'users/:id'
  post 'bookings' to: 'bookings/show'
  get 'studios' to: 'studios/new'
  get 'studios' to: 'studios/?'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
