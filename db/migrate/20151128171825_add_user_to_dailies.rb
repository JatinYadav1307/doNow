class AddUserToDailies < ActiveRecord::Migration
  def change
   	add_reference :dailies, :user, index: true, foreign_key: true
  end
end
