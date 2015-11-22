class CreateHabitsTags < ActiveRecord::Migration
  def self.up
    create_table :habits_tags, :id => false do |t|
  		t.integer :habit_id
  		t.integer :tag_id
    end
    add_index :habits_tags, :habit_id
    add_index :habits_tags, :tag_id
  end

  def self.down
  	drop_table :habits_tags
  end
end
