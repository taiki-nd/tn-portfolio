Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'posts#index'
  post 'posts/attach', to: 'posts#attach'
end
