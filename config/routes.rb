Rails.application.routes.draw do
  devise_scope :user do
    get "/sign_up" => "signup#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:new, :create, :index]
  root 'posts#index'
end
