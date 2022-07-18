class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    carted_products = CartedProduct.all
    # carted_products = CartedProduct.find_by(status: params[:status])
    # carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products.as_json
  end

  def show
    carted_products = CartedProduct.find_by(id: params[:id])
    render json: carted_products.as_json
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: nil,
      status: "carted",
    )
    carted_product.save
    render json: carted_product.as_json
  end

  def update
    carted_products = CartedProduct.find_by(id: params[:id])
    carted_products.quantity = params[:quantity] || carted_products.quantity
    carted_products.save
    render json: carted_products.as_json
  end

  def destroy
    carted_products = CartedProduct.find_by(id: params[:id])
    product.status == "removed"
    render json: { message: "Product has been successfully removed from your cart." }
  end
end
