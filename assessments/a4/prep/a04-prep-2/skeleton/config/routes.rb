Links::Application.routes.draw do
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :links
  resources :comment, only: [:create, :destroy]

end