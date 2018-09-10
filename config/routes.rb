Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'

  resources :realisations, only: [:index, :new, :edit, :create, :update, :destroy]

  get 'agence', to: 'pages#agence'

  #get 'contact', to: 'pages#contact'
  get 'contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'

  #resources :realisations
  get 'realisations/:url', to: 'realisations#show'
end
