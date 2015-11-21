class AddUserIdToTags < ActiveRecord::Migration
  def change
    add_reference :tags, :user, index: true, foreign_key: true
    # add_index :tags, :user_id
  end
end
