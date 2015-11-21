class AddAttributesToTireLineItem < ActiveRecord::Migration
  def change
   add_column :tire_line_items, :units, :integer, null: false
   add_column :tire_line_items, :total_amount, :decimal, precision: 20,  scale: 2, null: false
   add_column :tire_line_items, :tire_type, :text, null: false
   add_column :tire_line_items, :unit_amount, :text, null: false
   add_column :tire_line_items, :log_id, :integer, null: false
  end
end
