Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => 'user/registrations' }
  resources :user_stocks, except: [:show, :edit, :update]
  root 'welcome#index'
  get 'my_profile', to: 'users#my_profile'
  get 'search_stocks', to: 'stocks#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
