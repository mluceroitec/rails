Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  get 'search/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: "home#index"
  
  resources:images
  
end
