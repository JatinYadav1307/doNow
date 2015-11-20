class CreateTrials < ActiveRecord::Migration
  def change
    create_table :trials do |t|
      t.string :title
      t.text :notes
      t.integer :diff

      t.timestamps null: false
    end
  end
end
