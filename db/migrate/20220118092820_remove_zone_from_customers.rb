class RemoveZoneFromCustomers < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :zone, :integer
  end
end
