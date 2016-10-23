Rails.application.routes.draw do

  resources :reservations

  root 'dashboards#index'
end
