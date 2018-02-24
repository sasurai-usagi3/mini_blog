MiniBlog::Engine.routes.draw do
  root to: 'articles#index'

  devise_for :users, class_name: 'MiniBlog::User', module: 'mini_blog/users'

  resources :articles
end
