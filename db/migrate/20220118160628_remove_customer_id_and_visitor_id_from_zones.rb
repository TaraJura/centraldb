class RemoveCustomerIdAndVisitorIdFromZones < ActiveRecord::Migration[7.0]
  def change
    remove_column :zones, :customer_id, :integer
    remove_column :zones, :visitor_id, :integer
  end
end
