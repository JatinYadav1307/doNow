class CreateTagsTrials < ActiveRecord::Migration
  def self.up
    create_table :tags_trials, :id => false do |t|
    	t.integer :tag_id
    	t.integer :trial_id
    end
    add_index :tags_trials, :tag_id
    add_index :tags_trials, :trial_id
  end

  def self.down
  	drop_table :tags_trials
  end
end
