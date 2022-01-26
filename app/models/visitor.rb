class Visitor < ApplicationRecord
  audited
  belongs_to :customer
  has_many :visitorsZoneAcce, dependent: :destroy
  accepts_nested_attributes_for :visitorsZoneAcce

  scope :with_zones, -> { includes(visitorsZoneAcce: :zone) }
  


end

