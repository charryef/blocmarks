Rails.application.routes.draw do

  get 'likes/index'
  devise_for :users

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
