class ProductsController < ApplicationController


  def all_products_method
    products = Product.all
    render json: products.as_json
  end 


  def product_method 
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end 

end
