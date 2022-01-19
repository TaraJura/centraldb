class Visitor < ApplicationRecord
  audited
  belongs_to :customer
  has_many :visitorsZoneAcce
end
