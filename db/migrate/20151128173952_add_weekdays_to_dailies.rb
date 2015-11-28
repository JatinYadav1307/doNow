class AddWeekdaysToDailies < ActiveRecord::Migration
  def change
  	add_column :dailies, :monday, :boolean
  	add_column :dailies, :tuesday, :boolean
  	add_column :dailies, :wednesday, :boolean
  	add_column :dailies, :thursday, :boolean
  	add_column :dailies, :friday, :boolean
  	add_column :dailies, :saturday, :boolean
  	add_column :dailies, :sunday, :boolean
  end
end
