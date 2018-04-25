Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#home'

  resources :regions
  resources :genres
  resources :users, only: [:index, :create, :update, :destroy, :show, :new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'

  #api
  namespace :api do
    namespace :v1 do
      get 'getRegions', to: 'regions#new'
      resources :facebook, :path => "facebook_login", only: [ :create ]
    end
  end

end
