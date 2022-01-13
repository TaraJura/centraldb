class AddZonesToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :zone, :integer
  end
end
