Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :zodiacs, only: [:index, :show]
  resources :locations, only: [:index, :show]
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/main", to: "application#main"
=======

get '/', to: 'application#main', as: 'main'
>>>>>>> c770dbb6178c45e0aacbaff72d09cb7b5aebad39
end
