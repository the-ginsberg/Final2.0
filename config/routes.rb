Rails.application.routes.draw do
  get 'newsfeed/index'
  get 'newsfeed/show'
  get 'newsfeed/new'
  get 'newsfeed/edit'
  get 'newsfeed/create'
  get 'newsfeed/update'
  get 'newsfeed/destroy'

  get 'dashboard/index'
  get 'dashboard/show'
  get 'dashboard/new'
  post 'dashboards' => 'dashboard#create'
  get 'dashboard/edit'
  resources :dashboard do
    resources :newsfeed
  end

  devise_for :users
  root 'user#home'
end
