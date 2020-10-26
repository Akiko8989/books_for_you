Rails.application.routes.draw do
  devise_for :users
  resources :trouble_posts
end
