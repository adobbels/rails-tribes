class AddColumnsToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :idlock, :string
    add_column :houses, :ipaddress, :string
    add_column :houses, :idbridge, :string
  end
end
