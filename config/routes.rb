Rails.application.routes.draw do
  devise_for :users
  resources :patients
  resources :groups

  get '/my-patients', to: 'users#patient'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
end
