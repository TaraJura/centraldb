class CreateDefenders < ActiveRecord::Migration[7.0]
  def change
    create_table :defenders do |t|

      t.timestamps
    end
  end
end
