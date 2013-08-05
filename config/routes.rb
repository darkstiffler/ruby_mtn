RubyMtn::Application.routes.draw do
  get "user/new" => "user#new"
  post "user/new" => "user#create"
  get "users/" => "user#list"
  get "user/create"
  get "user/delete"

  root "user#new"
end
