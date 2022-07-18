Rails.application.routes.draw do
  # resources :CartedProduct, controller: "carted_products"
  #Product routes
  # get "/products", controller: "products", action: "index"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  #Supplier routes
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  #User routes
  post "/users" => "users#create"

  #Sessions route
  post "/sessions" => "sessions#create"

  #orders route
  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  ###carted products
  get "/carted_products" => "carted_products#index"
  get "/carted_products/:id" => "carted_products#show"
  post "/carted_products" => "carted_products#create"
  patch "/carted_products/:id" => "carted_products#update"
  delete "/carted_products/:id" => "carted_products#destroy"
end
