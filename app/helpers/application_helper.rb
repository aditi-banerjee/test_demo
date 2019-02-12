module ApplicationHelper

  #
  ##Def to get the buyers
  #
  def option_for_buyer
     Buyer.select(:id, :name).map{|m| [m.name, m.id]}
  end

  #
  ##Def to get products
  #
  def option_for_product
    Product.select(:id, :name).map{|i| [i.name, i.id]}
  end

end
