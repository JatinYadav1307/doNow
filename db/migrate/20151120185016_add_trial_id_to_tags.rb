class AddTrialIdToTags < ActiveRecord::Migration
  def change
    add_column :tags, :trial_id, :integer
  end
end
