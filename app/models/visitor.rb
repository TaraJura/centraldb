class Visitor < ApplicationRecord
  audited
  belongs_to :customer
  has_many :visitorsZoneAcce, dependent: :destroy

  scope :with_zones, -> { includes(visitorsZoneAcce: :zone) }
  
  # Visitor.includes(visitorsZoneAcce: :zone).all.each {|v| v.visitorsZoneAcce.map{|vz| puts vz.zone.name}}; 


end

