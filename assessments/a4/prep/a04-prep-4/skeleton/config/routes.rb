Links::Application.routes.draw do
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :links, except: :destroy
  resources :comments, only: [:create, :destroy]
end
