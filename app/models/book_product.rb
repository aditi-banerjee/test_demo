class BookProduct < ApplicationRecord
  #
  ##Callbacks
  #
  after_create :update_product_balance
  before_save :check_if_enough_quantity

  #
  ##Associations
  #
  belongs_to :buyer

  belongs_to :product

  #
  ##Validations
  #
  validates(
    :quantity,
    presence: true,
    numericality:{
      greater_than: 0
    }
  )

  #
  ##update_product_balance
  #
  def update_product_balance
    product_balance = ProductQuantityBalance.find_or_initialize_by(
      product: self.product_id
    )
    product_balance.quantity = product_balance.quantity.present? (product_balance.quantity - self.quantity) : self.quantity
    product_balance.save
  end

  #
  ##Check the quantity of product
  #
  def check_if_enough_quantity
    product_balance = self.try(:product).try(:product_quantity_balance)
    if product_balance.present? && self.quantity > product_balance.quantity
      #Error message is to be added here and this will be the custom validation not the Callbacks
    end
  end

end
