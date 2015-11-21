class CreateTireLineItems < ActiveRecord::Migration
  def change
    create_table :tire_line_items do |t|

      t.timestamps
    end
  end
end
