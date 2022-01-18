json.extract! visitor, :id, :name, :email, :phone, :identity_card_type, :identity_card_number, :expires, :created_at, :updated_at
json.url visitor_url(visitor, format: :json)
