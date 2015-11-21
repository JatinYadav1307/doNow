class AddTrialToSubtask < ActiveRecord::Migration
  def change
    add_reference :subtasks, :trial, index: true, foreign_key: true
  end
end
