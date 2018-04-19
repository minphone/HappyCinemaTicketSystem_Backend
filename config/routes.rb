Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#login'

  resources :regions, only: [ :index, :create, :update, :destroy ]
  resources :genres, only: [ :index, :create, :update, :destroy ]

  #api
  namespace :api do
    namespace :v1 do
      resources :regions, only: [ :index ]
      resources :facebook, :path => "facebook_login", only: [ :create ]
    end
  end

end
