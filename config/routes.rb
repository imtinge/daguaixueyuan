Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "admin/tasks#new"

  namespace :admin do
    resources :tasks
  end
end
