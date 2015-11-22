class CreateNotesTags < ActiveRecord::Migration
  def self.up
    create_table :notes_tags, :id => false do |t|
    	t.integer :note_id
    	t.integer :tag_id
    end
    add_index :notes_tags, :tag_id
    add_index :notes_tags, :note_id
  end

  def self.down
  	drop_table :notes_tags
  end
end
