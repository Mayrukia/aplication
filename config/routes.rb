Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'frontend/main#index'

  namespace :backend do
    get '/', to: 'main#index'
    resources :products
    resources :categories
    resources :tags
  end

  namespace :frontend do
      get '/', to: 'main#index'
      get 'products', to: 'products#index'
      get 'products/:id', to: 'products#show'
  end
end
