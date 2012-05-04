Twitter::Application.routes.draw do
  resources :people

  devise_for :users

  root :to => "home#index"
end
