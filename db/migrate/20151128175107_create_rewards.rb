class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :title
      t.text :notes
      t.integer :price

      t.timestamps null: false
    end
  end
end
