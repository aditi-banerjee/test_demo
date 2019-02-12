class Product < ApplicationRecord
  #
  ##Associations
  #
  has_many(
    :book_products,
    dependent: :destroy
  )

  has_one(
    :product_quantity_balance,
    dependent: :destroy
  )

  #
  ##Validations
  #
  validates(
    :name,
    presence: true,
  )

  validates(
    :quantity,
    presence: true,
    numericality:{
      greater_than: 0
    }
  )

  validates(
    :unit_price,
    presence: true,
    numericality:{
      greater_than: 0
    }
  )
end
