Rails.application.routes.draw do
  resources :orders, only: [:new, :create]

  root :to => redirect('/orders/new')
end
