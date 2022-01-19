class VisitorsZoneAcce < ApplicationRecord
  audited
  belongs_to :visitor
  belongs_to :zone
end
