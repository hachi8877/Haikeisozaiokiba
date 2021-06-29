Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :background_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :background_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]


end
