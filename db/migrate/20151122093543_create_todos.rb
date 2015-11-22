class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.text :notes
      t.date :duedate
      t.integer :difficulty

      t.timestamps null: false
    end
  end
end
