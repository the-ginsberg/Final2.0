Rails.application.routes.draw do

  resources :newsfeeds
  get 'dashboard/index'
  get 'dashboard/show'
  get 'dashboard/new'
  post 'dashboards' => 'dashboard#create'
  get 'dashboard/edit'
  resources :dashboard, shallow: true do
    resources :newsfeeds
  end


  devise_for :users
  root 'user#home'
end
