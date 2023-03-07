Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  post 'books' => 'books#create'
  resources :books, only: [:new, :index, :show, :edit]
  # books newは不要?の予定
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
end
