Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy', as: 'sign_out_path'
    get 'sign_in', to: 'devise/sessions#new', as: 'sign_in_path'
  end

  root "posts#index"
  resources :posts, only: [:new, :create, :index]
end
