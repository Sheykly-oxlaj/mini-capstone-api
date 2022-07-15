class ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index 
    @products = Product.all
    render template: "products/index" 
  end 
  # def all_products_method
  #   products = Product.all
  #   render json: products.as_json
  # end 
  def show 
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end 

  # def product_method 
  #   product = Product.find_by(id: params["id"])
  #   render json: product.as_json
  # end 

  def create 
    @product = Product.create(
      name: params["name"],
      price: params["price"],
      # image_url: params["image_url"],
      description: params["description"],
    )
    
    if @product.save 
    render template: "products/show"
    else 
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end 
  end 

  def update
    product_id = params["id"]
    @product = Product.find_by(id: product_id)

      @product.name = params["name"]  || @product.name 
      @product.price = params["price"] || @product.price
      # @product.image_url = params["image_url"] || @product.image_url
      @product.description = params["description"] || @product.description

      if @product.save 
        render template: "products/show"
      else 
        render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
      end 
  end 

  def destroy
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: { message: "Product succesfully deleted, this product has beecome unavailable"}
  end 

end
