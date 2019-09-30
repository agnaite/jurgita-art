Rails.application.routes.draw do
  resources :categories, only: [:show] do
    get 'welcome/index'
  end

  namespace :admin do
    get :logout
    resources :categories, except: [:update, :edit, :destroy] do
      resources :paintings, except: [:show, :index]
    end
  end

  root 'welcome#index'
end
