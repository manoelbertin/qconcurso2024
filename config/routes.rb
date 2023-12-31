Rails.application.routes.draw do
 
  namespace :site do
    get 'welcome/index'
  end
  namespace :usuarios_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
    resources :admins
    resources :subjects
    resources :questions
  end
  devise_for :admins
  devise_for :usuarios
  
  get 'home', to: 'site/welcome#index'

  root to: 'site/welcome#index'
end
