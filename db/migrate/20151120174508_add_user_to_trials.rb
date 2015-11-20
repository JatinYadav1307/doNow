class AddUserToTrials < ActiveRecord::Migration
  def change
    add_reference :trials, :user, index: true, foreign_key: true
  end
end
