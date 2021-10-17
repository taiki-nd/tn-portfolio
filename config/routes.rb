Rails.application.routes.draw do
  devise_for :usersssss
  root to: 'works#index'
  resources :works
end
