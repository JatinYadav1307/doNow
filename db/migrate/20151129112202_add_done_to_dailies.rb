class AddDoneToDailies < ActiveRecord::Migration
  def change
    add_column :dailies, :done, :boolean
  end
end
