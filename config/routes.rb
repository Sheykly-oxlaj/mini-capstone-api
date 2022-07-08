Rails.application.routes.draw do
  
  # get "/products", controller: "products", action: "index"
  get "/products" => "products#index"

  # get "/products/:id", controller: "products", action: "show"
  get "/products/:id" => "products#show"

  # post "/products", controller: "products", action: "create"
  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"


  # get "/products", controller: "products", action: "index"
  get "/suppliers" => "suppliers#index"

  # get "/suppliers/:id", controller: "suppliers", action: "show"
  get "/suppliers/:id" => "suppliers#show"

  # post "/suppliers", controller: "suppliers", action: "create"
  post "/suppliers" => "suppliers#create"

  patch "/suppliers/:id" => "suppliers#update"

  delete "/suppliers/:id" => "suppliers#destroy"

end
