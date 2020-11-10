Rails.application.routes.draw do
  devise_for :users
  root "trouble_posts#index"
  resources :trouble_posts
  resources :novel_posts
end
