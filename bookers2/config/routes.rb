Rails.application.routes.draw do
  get 'search/search'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]do
    member do
      get :following, :followers
    end
  end
  
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end 
  
  post 'follow/:id' => 'relationships#follow', as: 'follow' 
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' 
  
  get '/search' => 'search#search'
  
  root 'homes#top'
  get 'home/about' => 'homes#about'
end
