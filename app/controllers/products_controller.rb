class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end
    render :index
  end

  # def all_products_method
  #   products = Product.all
  #   render json: products.as_json
  # end
  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end

  # def product_method
  #   product = Product.find_by(id: params["id"])
  #   render json: product.as_json
  # end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      # image_url: params[:image_url],
      description: params[:description],
    )
    if @product.save #happy path
      render :show
    else # sad path
      render json: { errors: @product.errors.full_messages },
             status: 418
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    # @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    if @product.save #happy path
      render :show
    else # sad path
      render json: { errors: @product.errors.full_messages },
             status: 418
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product succesfully deleted, this product has beecome unavailable" }
  end
end
