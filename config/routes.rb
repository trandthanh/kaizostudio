Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'

  get 'agence', to: 'pages#agence'

  get 'contact', to: 'pages#contact'

  resources :realisations
  #resources :realisations, only: [:index, :new, :edit, :create, :update, :destroy]
  #get 'realisations/:url', to: 'realisations#show', as: :realisation
end
