class Zone < ApplicationRecord
  has_many :CustomersZoneAcce
  has_many :VisitorsZoneAcce
end
