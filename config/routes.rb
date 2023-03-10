Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  patch 'users/:id' => 'users#update', as: 'update_user'
  
end

# routing順番大切！
# editがgetかpatchか確認する