Rails.application.routes.draw do
  get 'mypage', to: 'users#me' #mepageでアクセスが来たらusersコントローラーのmeアクションをが呼ばれる
  post 'login', to: 'sessions#create' #ログインはセッションの作成を意味するのでcreate
  delete 'logout', to: 'sessions#destory' #ログアウトはセッションの削除を意味するのでdelete
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create]
  root 'home#index'
  resources :boards
  resources :comments, only: %i[create destroy]
end
