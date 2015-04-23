Rails.application.routes.draw do
  get 'static_pages/about'
  get 'static_pages/help'
  get 'groups/show'
  get 'static_pages/wonder_why'
  get 'static_pages/wtf'
  get 'static_pages/serious_corner'
  get 'static_pages/fun_center'
  get 'static_pages/quite_interesting'
  get 'static_pages/general_translations'
  devise_for :users
get 'welcome/index'
  resources :posts do
   post 'translated'
get 'tags/:tag', to: 'posts#index', as: "tag"
  resources :comments do
    member do
      post 'vote_up'
    end
  end
end
root "welcome#index"
end



