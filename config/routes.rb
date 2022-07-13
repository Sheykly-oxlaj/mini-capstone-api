Rails.application.routes.draw do
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
   



end
