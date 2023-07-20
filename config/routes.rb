Rails.application.routes.draw do
  # mount_devise_token_auth_for 'User', at: 'auth'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  
  namespace :bx_block_detail do
    resources :terms_and_conditions do 
    collection do 
      post :terms_and_condition_data
    end
  end
  end

  namespace :bx_block_detail do
    resources :privacy_policies do 
    collection do 
      post :privacy_policy_data
    end
  end
  end
  

  namespace :bx_block_detail do
    resources :about_us do 
    collection do 
      post :about_data
    end
  end
  end
  
  namespace :bx_block_profile do
    resources :profiles do
      post :profile_data
    end
  end
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "welcomes#index"
  # get "/send_mail" => "welcome#send_mail"

  resources :welcomes do
    collection do
      get :send_mail
    end
  end
end
