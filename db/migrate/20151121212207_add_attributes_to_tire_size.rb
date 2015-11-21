class AddAttributesToTireSize < ActiveRecord::Migration
  def change
    add_column :tire_sizes, :size, :text, null: false
    add_column :tire_sizes, :tire_line_item_id, :integer, null: false
  end
end
