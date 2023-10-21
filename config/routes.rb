Rails.application.routes.draw do
  devise_for :customers, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/admin" => "admin/homes#top"

  namespace :admin do
    resources :items, only: [:new,:create,:index,:show,:edit,:update]
    resources :customers, only: [:index,:show,:edit,:update]
    resources :orders, only: [:show,:update]
    resources :genres, only: [:index,:create,:edit,:update]
  end

  patch "/admin/order_details/:id" => "admin/order_details#update"

  root :to => "public/homes#top"

  get "/about" => "public/homes#about"

  scope module: :public do
    resources :items, only: [:index,:show]
    resources :customers, only: [:show,:edit,:update]
    resources :cart_items, only: [:index,:update,:destroy,:create]
    resources :orders, only: [:new,:create,:index,:show]
    resources :shipping_addresses, only: [:index,:create,:edit,:update,:destroy]
  end

  get "/customers/confirm" => "public/customers#confirm"
  delete "/customers/logical_delete/my_page" => "public/customers#logical_delete"

  delete "cart_items/destroy_all" => "public/cart_items#destroy_all"

  post "/orders/confirm" => "public/orders#confirm"
  get "/orders/compleated" => "public/orders#completed"

end
