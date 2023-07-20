json.extract! profile, :id, :name, :phone_number, :date_of_birth, :city, :address, :street, :apartment, :floor, :city, :country, :state, :postal_code, :created_at, :updated_at
json.url profile_url(profile, format: :json)
