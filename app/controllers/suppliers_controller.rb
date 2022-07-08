class SuppliersController < ApplicationController

  def index 
    suppliers = Supplier.all
    render json: suppliers.as_json
  end 

  def show 
    supplier = Supplier.find_by(id: params["id"])
    render json: supplier.as_json
  end 

  def create 
    supplier = Suplplier.create(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"])
  end 

  def update
      supplier = Supplier.find_by(id: params["id"])
      supplier.name = params["name"]  || supplier.name 
      supplier.email = params["email"] || supplier.email
      supplier.phone_number = params["phone_number"] || supplier.phone_number
  end 

  def destroy
    supplier = Supplier.find_by(id: params["id"])
    supplier.destroy
    render json: { message: "supplier succesfully deleted, this supplier has beecome unavailable"}
  end 

end