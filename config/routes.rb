Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :zodiacs, only: [:index, :show]
  resources :locations, only: [:index, :show]

get '/', to: 'application#main', as: 'main'
end
