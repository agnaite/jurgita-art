Rails.application.routes.draw do
  resources :categories, only: [:show] do
  end

  resources :about, only: [:index] do
  end

  resources :exhibitions, only: [:index] do
  end

  namespace :admin do
    root "admin#index"
    get :logout
    resources :categories, except: [:update, :edit, :destroy] do
      resources :paintings, except: [:show, :index]
    end
    resources :exhibitions, except: [:show, :index]
  end

  root "welcome#index"
  get "welcome/index"
end
