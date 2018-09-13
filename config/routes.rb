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

  #errors
  get "/404", to: 'errors#not_found'
  get "/422", to: 'errors#unacceptable'
  get "/500", to: 'errors#internal_server_error'

  # 301 redirect from old URLs
  get "/old_path_to_realisations/:id", to: redirect("/realisations/%{id}s")
end
