Rails.application.routes.draw do
  root "chats#index"
  resources :chats, only: [:index]
end
