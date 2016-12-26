class DropColumnTireLineItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :tire_line_items, :total_amount
  end
end
