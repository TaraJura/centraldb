class Zone < ApplicationRecord
  has_many :CustomersZoneAcce, dependent: :destroy
  has_many :visitorsZoneAcce, dependent: :destroy
end
