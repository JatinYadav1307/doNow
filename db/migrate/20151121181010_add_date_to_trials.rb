class AddDateToTrials < ActiveRecord::Migration
  def change
    add_column :trials, :date, :date
  end
end
