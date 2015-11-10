Rails.application.routes.draw do

  root to: 'application#index'

# Fixed Routes
  namespace :api, defaults: { format: "json" } do
    resources :issues, :candidates, :users, :feedbacks
    resources :sessions, only: [:create, :destroy]
  end

end
