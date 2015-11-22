class DropRecordsFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :health
  	remove_column :users, :exp
  	remove_column :users, :level
  end
end
