class AddVisitorTypeToVisitors < ActiveRecord::Migration[7.0]
  def change
    add_column :visitors, :visitor_type, :string
  end
end
