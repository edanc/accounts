class AddSummarizeToLog < ActiveRecord::Migration
  def change
    add_column :logs, :summarize, :boolean, default: false
  end
end
