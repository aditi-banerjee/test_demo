json.extract! buyer, :id, :name, :email, :contact_no, :dob, :created_at, :updated_at
json.url buyer_url(buyer, format: :json)
