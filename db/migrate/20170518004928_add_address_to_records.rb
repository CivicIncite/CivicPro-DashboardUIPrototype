class AddAddressToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :address, :string
    add_column :records, :url, :string
  end
end
