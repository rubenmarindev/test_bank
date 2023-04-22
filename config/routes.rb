Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  #root 'welcome#index'
  resources :users
  resources :banks
  resources :suppliers
end
