class Product < ApplicationRecord
  belongs_to :supplier
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates :price, numericality: {greater_than: 5 }
  # validates :description, length: { in: 10...500}

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    if price < 10
      return true     #Return is unnecesary
    else
      return false
    end
  end

  def tax
    #9% rate
    tax = price * 0.09
  end

  def total
    total = tax + price
    "The total price, including taxes is $#{total}"
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  # belongs_to :supplier

  def images
    Image.where(product_id: id)
    # Image.all
  end
end
