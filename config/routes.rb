Rails.application.routes.draw do
  resources :categories, only: [:show] do
  end

  namespace :admin do
    root 'admin#index'
    get :logout
    resources :categories, except: [:update, :edit, :destroy] do
      resources :paintings, except: [:show, :index]
    end
  end

  root 'welcome#index'
end
