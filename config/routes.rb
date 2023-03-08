Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:new, :show, :edit]
  # books newは不要?の予定
  post 'books' => 'books#create'
  get '/books' => 'books#index'
end

# routing順番大切！