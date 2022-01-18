class AddVisitorIdToZone < ActiveRecord::Migration[7.0]
  def change
    add_reference :zones, :visitor, foreign_key: true
  end
end
