class AddUserAndCustomersToGovernings < ActiveRecord::Migration[7.0]
  def change
    add_reference :governings, :user, null: false, foreign_key: true
    add_reference :governings, :customer, null: false, foreign_key: true
  end
end
