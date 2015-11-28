class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.string :title
      t.text :notes
      t.integer :difficulty
      t.date :startDate
      t.integer :streak

      t.timestamps null: false
    end
  end
end
