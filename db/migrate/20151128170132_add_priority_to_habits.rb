class AddPriorityToHabits < ActiveRecord::Migration
  def change
    add_column :habits, :priority, :integer
  end
end
