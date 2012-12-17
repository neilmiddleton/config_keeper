ConfigKeeper::Application.routes.draw do
  devise_for :users
  resources :apps, only: [:index]

  get "apps(/:name)" => "apps#show", as: :app

  root :to => 'home#index'
end
