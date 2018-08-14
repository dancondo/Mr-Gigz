Rails.application.routes.draw do


  get 'bars/dashboard', to: 'bars#dashboard', as: :bar_dashboard
  get 'bands/dashboard', to: 'bands#dashboard', as: :band_dashboard
  resources :bars do
    resources :gigs, only: [:new, :create, :edit, :update]
  end

  resources :gigs, only: [:index, :show, :destroy] do
    resources :applies, only: [:index, :create, :destroy]
  end
  resources :bands

  resources :messages, only: [:create, :index]
  get 'messages/conversation', to: 'messages#conversation', as: :conversation
  post 'gigs/select_band', to: 'gigs#select_band', as: :select_band
  patch 'gigs/select_band_via_chat', to: 'gigs#select_band_via_chat', as: :select_band_via_chat

  resources :roles, only: [:new, :create]
  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }
  root to: 'pages#home'
  get 'pages/band_home', to: 'pages#band_home', as: 'sou_banda'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
