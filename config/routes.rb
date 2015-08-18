Rails.application.routes.draw do
  get 'dashboard/index'
  get 'dashboard/show'
  get 'dashboard/new'
  post 'dashboards' => 'dashboard#create'
  post 'dashboards/create'
  get 'dashboard/edit'
  resources :dashboard do
    resources :newsfeed
  end

  devise_for :users
  root 'user#home'
end
