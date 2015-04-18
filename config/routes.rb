Rails.application.routes.draw do
devise_for :users
get 'welcome/index'
  resources :posts do
   post 'translated'
  resources :comments do
    member do
      post 'vote_up'
    end
  end
end
root "welcome#index"
end