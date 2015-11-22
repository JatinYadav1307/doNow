class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :title
      t.text :notes
      t.integer :streak
      t.integer :difficulty

      t.timestamps null: false
    end
  end
end
