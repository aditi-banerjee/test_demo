json.extract! book_product, :id, :quantity, :buyer_id, :product_id, :start_date, :end_date, :created_at, :updated_at
json.url book_product_url(book_product, format: :json)
