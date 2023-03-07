Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'books/new'
  post 'books' => 'books#create'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
end
