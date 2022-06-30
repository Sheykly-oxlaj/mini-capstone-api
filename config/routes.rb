Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/AllProducts", controller: "products", action: "all_products_method"

  get "/firstmethod", controller: "products", action: "first_method"

  get "/secondmethod", controller: "products", action: "second_method"

end
