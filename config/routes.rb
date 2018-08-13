Rails.application.routes.draw do


  get 'bars/dashboard', to: 'bars#dashboard', as: :bar_dashboard
  resources :bars do
    resources :gigs, only: [:new, :create, :edit, :update]
  end

  resources :gigs, only: [:index, :show, :destroy] do
    resources :applies, only: [:create, :destroy, :create]
  end
  resources :bands

  # namespace :bar do
  #   resources :messages, only: [:index, :create]
  #   get 'messages'
  # end

  # namespace :band do
  #   # resources :messages, only: [:index, :new, :create]
  #   get 'messages'
  # end

  resources :messages, only: [:create, :index]
  get 'messages/conversation', to: 'messages#conversation', as: :conversation


  resources :roles, only: [:new, :create]
  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }
  root to: 'pages#home'
  get 'pages/band_home', to: 'pages#band_home', as: 'sou_banda'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
