Rails.application.routes.draw do
  get 'sessions/new'

  root :to=> "home#index"
  resources :users do
    resources :followings
    resources :comments do
      resources :reaction
    end
  end
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
end
