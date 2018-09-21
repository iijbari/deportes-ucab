Rails.application.routes.draw do
  root to: 'welcome#index'

  devise_for :users

  namespace :admin do
    get 'landing', to: 'landing#index'
  end

  get 'profile', to: 'users#show'

  resources :schools, except: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
