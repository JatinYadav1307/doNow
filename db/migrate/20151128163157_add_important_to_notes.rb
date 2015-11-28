class AddImportantToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :important, :boolean
  end
end
