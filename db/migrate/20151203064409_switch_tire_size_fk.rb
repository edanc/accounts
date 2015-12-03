class SwitchTireSizeFk < ActiveRecord::Migration
  def change
    add_column :tire_line_items, :tire_size_id, :integer, null: false
    remove_column :tire_sizes, :tire_line_item_id
  end
end
