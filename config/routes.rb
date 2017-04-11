Rails.application.routes.draw do
  resources :concerts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"

  root to: "concerts#index"
end
