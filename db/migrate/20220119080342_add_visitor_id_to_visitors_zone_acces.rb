class AddVisitorIdToVisitorsZoneAcces < ActiveRecord::Migration[7.0]
  def change
    add_reference :visitors_zone_acces, :visitor, null: false, foreign_key: true
  end
end
