Rails.application.routes.draw do

  get 'reports/write_email'

  post 'reports/send_email'

  devise_for :users
  resources :reservations

  root 'dashboards#index'
end
