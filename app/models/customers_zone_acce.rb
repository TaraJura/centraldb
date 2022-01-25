class CustomersZoneAcce < ApplicationRecord
  audited
  belongs_to :customer
  belongs_to :zone


  validates :zone_id, presence: true, uniqueness: { scope: :customer_id }

end
