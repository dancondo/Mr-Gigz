Rails.application.routes.draw do

  resources :bars do
    resources :gigs, only: [:show, :new, :create]
  end
  resources :gigs, only: :index
  resources :bands
  resources :roles, only: [:new, :create]
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
