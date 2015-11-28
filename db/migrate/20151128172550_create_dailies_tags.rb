class CreateDailiesTags < ActiveRecord::Migration
  def self.up
    create_table :dailies_tags, :id => false do |t|
    	t.integer :daily_id
    	t.integer :tag_id
    end
    add_index :dailies_tags, :tag_id
    add_index :dailies_tags, :daily_id
  end

  def self.down
  	drop_table :dailies_tags
  end
end
