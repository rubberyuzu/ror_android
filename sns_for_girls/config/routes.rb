Rails.application.routes.draw do
  root :to=> "home#index"
  resources :users do
    resources :comments do
      resources :reaction
    end
  end
end
