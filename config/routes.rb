Rails.application.routes.draw do
  devise_for :users, :skip => 'registration'
  resources :notes

  authenticated :user do
    root 'notes#index', as: "authenticated_root"
  end

  root 'notes#index'






end
