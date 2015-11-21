class AddStreakToTrials < ActiveRecord::Migration
  def change
    add_column :trials, :streak, :integer
  end
end
