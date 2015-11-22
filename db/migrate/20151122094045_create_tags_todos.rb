class CreateTagsTodos < ActiveRecord::Migration
  def self.up
    create_table :tags_todos, :id => false do |t|
    	t.integer :tag_id
    	t.integer :todo_id
    end
    add_index :tags_todos, :tag_id
    add_index :tags_todos, :todo_id
  end

  def self.down
  	drop_table :tags_todos
  end
end
