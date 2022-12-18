Rails.application.routes.draw do
  resources :teams
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  get 'pages/home'

  authenticate :user, lambda { |u| u.admin? } do
    # mount Sidekiq::Web => '/sidekiq'

    # namespace :madmin do
    #   resources :impersonates do
    #     post :impersonate, on: :member
    #     post :stop_impersonating, on: :collection
    #   end
    # end
  end
  
  resources :notifications, only: [:index]
  resources :announcements, only: [:index]

  # users
  as :user do
    put '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", 
                                    registrations: 'registrations',
                                    confirmations: 'confirmations'  
  }

  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
