class DropHabitsTable < ActiveRecord::Migration
  def up
    drop_table :habits
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end