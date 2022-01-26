class AddAccountLevelToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :account_level, :integer
  end
end
