Rails.application.routes.draw do
  resources :archive_projects
  resources :archive_couriers
  resources :archive_release_couriers
  resources :archives
  resources :release_couriers
  resources :couriers
  resources :projects
  root 'dashboard#index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
end
