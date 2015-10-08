Rails.application.routes.draw do

  root to: 'application#index'

  namespace :api, defaults: { format: "json" } do
    resources :issues, :candidates, :users
    resources :sessions, only: [:create, :destroy]
  end

end
