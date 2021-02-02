Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  
  resources :books do
    resource :favorites, only: [:create, :destroy]
    # resource :favorites, only: [:create, :destroy]追記
    # showページが不要でidの受け渡しが必要ないので、resource
  end 
  
  root 'homes#top'
  get 'home/about' => 'homes#about'
end
