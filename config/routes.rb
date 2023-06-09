Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  
  get "/home/about" => "homes#about"
  resources :books, only: [:new, :create, :index, :show, :edit]
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
