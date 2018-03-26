Rails.application.routes.draw do

  get 'users/:id' => 'users#show' #マイページ
  
  # "=>"は実行結果

  get 'offer_details/index'

  root 'tops#index'

  get 'login', to:'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to:'sessions#destroy'
  get 'rooms/show'
  resources 'users'
  resources 'offers'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
