class CustomersZoneAcce < ApplicationRecord
  audited
  belongs_to :customer
  belongs_to :zone
end
