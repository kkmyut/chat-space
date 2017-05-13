Rails.application.routes.draw do
  devise_for :users
  root "groups#index"
  resources :groups,only: [:index,:new,:edit,:create,:update] do
    resources :chats, only: [:index]
  end
end