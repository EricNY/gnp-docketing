Rails.application.routes.draw do
  devise_for :users
  resources :copyrights

  get 'welcome/index'

  resources :patents

  resources :trademarks

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:

end
