class AddCustomerIdToVisitor < ActiveRecord::Migration[7.0]
  def change
    add_reference :visitors, :customer, null: false, foreign_key: true
  end
end
