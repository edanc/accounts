class AddDeletedAtToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :deleted_at, :datetime
    add_column :tire_line_items, :deleted_at, :datetime
  end
end
