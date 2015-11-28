class AddCurrencyToRecords < ActiveRecord::Migration
  def change
    add_column :records, :silver, :integer
    add_column :records, :gold, :integer
    add_column :records, :diamonds, :integer
  end
end
