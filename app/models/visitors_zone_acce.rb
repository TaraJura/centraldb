class VisitorsZoneAcce < ApplicationRecord
  audited
  belongs_to :visitor
  belongs_to :zone

  validates :zone_id, presence: true, uniqueness: { scope: :visitor_id }

end
