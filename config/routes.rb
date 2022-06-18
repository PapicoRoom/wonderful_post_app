Rails.application.routes.draw do
  resources :tags
  root to: 'articles#index'
  devise_for :users
  resources :articles
  get '/mypage', to:'mypage#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
