Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  resources :posts do
    member do
    get "like", to: "posts#upvote"
    get "dislike", to: "posts#downvote"
    end  
    resources :comments, shallow: true do
    member do
      put "like", to: "comments#upvote" , as: "like"
      put "dislike", to: "comments#downvote" , as: "dislike"
    end
  end

end

end