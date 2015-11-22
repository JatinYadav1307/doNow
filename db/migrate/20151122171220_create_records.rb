class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :health
      t.integer :experience
      t.integer :level

      t.timestamps null: false
    end
  end
end
