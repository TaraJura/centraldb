class CreateCustomersZoneAcces < ActiveRecord::Migration[7.0]
  def change
    create_table :customers_zone_acces do |t|

      t.timestamps
    end
  end
end
