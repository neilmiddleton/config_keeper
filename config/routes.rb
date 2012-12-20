ConfigKeeper::Application.routes.draw do
  devise_for :users

  resources :keys
  resources :apps, only: [:index] do
    member do
      post :sync_to_repo
    end
  end

  get "apps(/:name)" => "apps#show", as: :app

  root :to => 'home#index'
end
