RubyMtn::Application.routes.draw do
  get "user/new"
  get "user/create"
  get "user/delete"

  root "user#new"
end
