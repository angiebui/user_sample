UserSample::Application.routes.draw do
  root :to => "users#new" #controller and action
  resources :users
end

