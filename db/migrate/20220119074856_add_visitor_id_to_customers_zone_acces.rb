class AddVisitorIdToCustomersZoneAcces < ActiveRecord::Migration[7.0]
  def change
    add_reference :customers_zone_acces, :visitor, null: false, foreign_key: true
  end
end
