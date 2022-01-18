class AddCustomerIdToZone < ActiveRecord::Migration[7.0]
  def change
    add_reference :zones, :customer, foreign_key: true
  end
end
