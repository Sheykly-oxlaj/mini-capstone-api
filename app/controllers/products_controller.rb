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
      name: params ["name"],
      price: params ["price"],
      image_url: params ["image_url"],
      description: ["description"])
    product.save 
    render json: product.as_json
  end 

end
