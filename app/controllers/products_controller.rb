class ProductsController < ApplicationController

  def Product(input)
    @name = input[:name]
    @price = input [:price]
    @image_url = [:image_url]
    @description = [:description]
  end 
end
