Rails.application.routes.draw do

  resource :session, only: [:new, :create, :destroy]

  resources :users
  
  resources :questions do 
    resources :answers
  end

  root 'questions#index'

  namespace :api do
      resources :users
      resources :questions do 
        resources :answers
    end
  end

end
