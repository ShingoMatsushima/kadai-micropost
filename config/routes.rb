Rails.application.routes.draw do
  #TOPページ
  root to: 'toppages#index'
  
  #ログインページ
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #ユーザ登録ページ
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]

  #投稿ページ
  resources :microposts, only: [:create, :destroy]
end
