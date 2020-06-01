Rails.application.routes.draw do
  namespace :api, defaults:{ format: 'json'} do
    #devise_for :users
    resources :genders
    resources :document_types
    resources :countries do
      member do
        get :show_departments
      end        
    end
    resources :cities
    resources :departments do
      member do
        get :show_cities
      end        
    end
    devise_for :users, path: 'auth', path_names: { sign_in: 'login', registration: 'register'}
    #resource :user, only: [:show, :update]
    #devise_for :users, defaults: { format: :json }, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
    resources :clients do
      get :avatar, on: :member
      collection do
        get 'search/full_name/:full_name', :action => 'search_by_full_name'
      end
    end
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end