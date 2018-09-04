Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'agence', to: 'pages#agence'

  get 'contact', to: 'pages#contact'

  resources :realisations
end
