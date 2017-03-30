Rails.application.routes.draw do
root "chats#index"
get "chat" => "chats#index"
end
