class AddPriorityToDailies < ActiveRecord::Migration
  def change
    add_column :dailies, :priority, :integer
  end
end
