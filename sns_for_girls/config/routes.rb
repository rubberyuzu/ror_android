Rails.application.routes.draw do
  devise_for :users
  root :to=> "home#index"
  resources :users do
    resources :comments do
      resources :reaction
    end
  end
end
