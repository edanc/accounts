class AddDefaultsToLine < ActiveRecord::Migration[5.0]
  def up
    change_column :tire_line_items, :unit_amount, 'decimal USING CAST(unit_amount AS decimal)'
    change_column :tire_line_items, :unit_amount, :decimal, precision: 20, scale: 2
    change_column_default(:tire_line_items, :units, 0)
    change_column_default(:tire_line_items, :unit_amount, 0.0)
    change_column_default(:tire_line_items, :tire_type, '')
    change_column_default(:tire_line_items, :total_amount, 0.0)
    change_column_default(:labor_line_items, :amount, 0.0)
  end

  def down
    change_column :tire_line_items, :unit_amount, 'text USING CAST(unit_amount AS text)'
    change_column_default(:tire_line_items, :units, 0)
    change_column_default(:tire_line_items, :units, nil)
    change_column_default(:tire_line_items, :unit_amount, nil)
    change_column_default(:tire_line_items, :tire_type, nil)
    change_column_default(:labor_line_items, :amount, nil)
    change_column_default(:tire_line_items, :total_amount, 0.0)
  end
end
