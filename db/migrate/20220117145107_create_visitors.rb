class CreateVisitors < ActiveRecord::Migration[7.0]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :identity_card_type
      t.integer :identity_card_number
      t.date :expiration

      t.timestamps
    end
  end
end
