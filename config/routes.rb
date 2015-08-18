Rails.application.routes.draw do
  resources :dashboards
  devise_for :users
  root 'user#home'
end
