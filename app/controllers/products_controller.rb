class ProductsController < ApplicationController


  def index 
    products = Product.all
    render json: products.as_json
  end 
  # def all_products_method
  #   products = Product.all
  #   render json: products.as_json
  # end 
  def show 
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end 

  # def product_method 
  #   product = Product.find_by(id: params["id"])
  #   render json: product.as_json
  # end 

  def create 
    product = Product.new(
      name: "Air Jordan 1 Dark Mocha",
      price: 460,
      description: "This OG AJ1 employs a new twist on a familiar colour scheme: dark mocha. Continuing its rich history with the Jordan Brand, the crisp mocha colour blocking on soft nubuck leather gives this OG a clean and subtle look.")
    product.save 
    render json: product.as_json
  end 

end
