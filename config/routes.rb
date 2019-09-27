Rails.application.routes.draw do
  resources :categories, only: [:index, :show] do
    get 'welcome/index'
    resources :paintings, only: [:show]
  end

  namespace :admin do
    root 'admin#index'
    resources :categories do
      resources :paintings
    end
  end

  root 'welcome#index'
end
