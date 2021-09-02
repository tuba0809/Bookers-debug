Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users,only: [:show,:index,:edit,:update] do
 end
  resources :books do
  resource :favorites, only: [:create, :destroy]
  resources :post_comments, only: [:create, :destroy]
 end
 end