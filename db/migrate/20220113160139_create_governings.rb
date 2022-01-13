class CreateGovernings < ActiveRecord::Migration[7.0]
  def change
    create_table :governings do |t|
      t.date :expires
      t.boolean :superadmin

      t.timestamps
    end
  end
end
