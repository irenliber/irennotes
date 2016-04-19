Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :skip => 'registration'


  authenticated :user do
    root 'notes#index', as: "authenticated_root"
  end

  root 'notes#index'






end
