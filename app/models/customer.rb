class Customer < ApplicationRecord
  audited
  has_many :governings, dependent: :destroy
  has_many :visitors
  has_many :customersZoneAcce
end
