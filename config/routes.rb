Rails.application.routes.draw do
  devise_for :users
  get 'homes/top'
  root to: "homes#top"
  get "homes/about" => "homes#about", as: "about"
  resources :users, :books
  post 'books' => 'books#create'
  post 'users' => 'users#create'
  patch 'users/:id' => 'users#update', as: 'update_user'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
