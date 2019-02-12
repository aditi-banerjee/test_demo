class Buyer < ApplicationRecord
  #
  ##Associations
  #
  has_many(
    :book_products,
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
    :email,
    presence: true,
    format: {
      with: /\A[^@\s]+@[^@\s]+\z/
    }
  )

  validates(
    :contact_no,
    presence: true,
    length: {
      minimum: 10,
      maximum: 12
    }
  )

  validates(
    :dob,
    presence: true,
  )

end
