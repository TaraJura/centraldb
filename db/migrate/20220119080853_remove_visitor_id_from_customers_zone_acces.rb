class RemoveVisitorIdFromCustomersZoneAcces < ActiveRecord::Migration[7.0]
  def change
    remove_reference :customers_zone_acces, :visitor, null: false, foreign_key: true
  end
end
