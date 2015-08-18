Rails.application.routes.draw do
  get 'dashboard/index'

  get 'dashboard/show'

  get 'dashboard/new'

  get 'dashboard/edit'

  devise_for :users
  root 'user#home'
end
