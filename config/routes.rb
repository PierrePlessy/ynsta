Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pictures#index'
  resources :pictures
  get 'categories/:category_id', to: 'pictures#index', as: 'category'
  get 'tags/:tag_id', to: 'pictures#index', as: 'tag'
  get 'users/:slug', to: 'pictures#index', as: 'user'

  resources :favoris

  get '/upload', to: 'pictures#new', as: 'upload'
  #get '/users/:slug', to: 'users#show', as: 'users'
  #get '/users/', to: 'users#index', as: 'user'
end
