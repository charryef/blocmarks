Rails.application.routes.draw do

  resources :topics

  devise_for :users

  get 'about' => 'welcome#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
