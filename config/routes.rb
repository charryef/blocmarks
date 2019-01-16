Rails.application.routes.draw do

  get 'users/show'
  get 'likes/index'
  devise_for :users

  resources :users, only: [:show]

  resources :topics do
    resources :bookmarks, except: [:index]
  end

  resources :bookmarks, except: [:index] do
    resources :likes, only: [:index, :create, :destroy]
  end

  post :incoming, to: 'incoming#create'

  get 'about' => 'welcome#about'
  root 'welcome#index'
end
