Rails.application.routes.draw do
  root to: "homes#top"
  get "homes/about" => "homes#about", as: "about"
  # devise_scope :user do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  devise_for :users
  resources :books, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update, :delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
