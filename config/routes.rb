Rails.application.routes.draw do
  devise_for :users
  resources :artistes
  resources :concerts, only: [:show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"

  root to: "concerts#index"
end
