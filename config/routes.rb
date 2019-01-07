Rails.application.routes.draw do

  devise_for :users

  resources :topics do
    resources :bookmarks, except: [:index]
  end

  get 'about' => 'welcome#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
