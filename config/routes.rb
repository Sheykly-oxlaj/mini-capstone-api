Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "/products", controller: "products", action: "index"
  get "/products" => "products#index"

  # get "/products/:id", controller: "products", action: "show"
  get "/products/:id" => "products#show"

  # post "/products", controller: "products", action: "create"
  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

end
