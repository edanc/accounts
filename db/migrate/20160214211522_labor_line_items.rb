class LaborLineItems < ActiveRecord::Migration
  def change
    create_table :labor_line_items do |t|
      t.timestamps
    end
    add_column :labor_line_items, :log_id, :integer, null: false
    add_column :labor_line_items, :amount, :decimal, precision: 20, scale: 2 , null: false
    add_column :labor_line_items, :description, :text
    add_column :labor_line_items, :deleted_at, :datetime
  end
end
