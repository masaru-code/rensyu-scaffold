Rails.application.routes.draw do
  resources :scaffos
  resources :ones

  root "scaffos#index"
end
