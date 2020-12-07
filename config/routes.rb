Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root "trouble_posts#index"
  resources :trouble_posts do
    resources :comments, only: [:create]
  end
  resources :novel_posts do
    resource :likes, only: [:create, :destroy]
  end
end
