class CreateTireSizes < ActiveRecord::Migration
  def change
    create_table :tire_sizes do |t|
      t.timestamps
    end
  end
end
