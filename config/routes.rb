Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'works#index'
  resources :works
  post 'posts/attach', to: 'posts#attach'
end
