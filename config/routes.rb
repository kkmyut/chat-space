Rails.application.routes.draw do
  devise_for :users
  root "groups#index"
  resources :groups,only: [:index,:new,:edit,:create,:update] do
    resources :messages, only: [:new, :create, :index]
  end
end