Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new]
  resources :zodiacs, only: [:index, :show]
  resources :locations, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
