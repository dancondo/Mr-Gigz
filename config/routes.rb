Rails.application.routes.draw do

  resources :bars do
    resources :gigs, only: [:new, :create, :edit, :update]
  end
  resources :gigs, only: [:index, :show, :destroy] do
    resources :applies, only: [:create, :destroy]
  end
  resources :bands
  resources :roles, only: [:new, :create]
  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#home'
  get 'pages/band_home', to: 'pages#band_home', as: 'sou_banda'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
