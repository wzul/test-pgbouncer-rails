Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  resources :posts

  # get 'resetpostcounter', 

  get 'resetpostcounter', action: :reset, controller: 'post_counter'

  get 'testfixie', action: :test, controller: 'fixie_addon'

  namespace :api do
    post 'create', action: :create, controller: :post
  end
end