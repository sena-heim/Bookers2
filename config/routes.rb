Rails.application.routes.draw do

  root 'home#top'
  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :books, only: [:create, :index, :show, :destroy, :edit, :update ]
  resources :users, only: [ :index, :show, :edit ,:update ]

end
