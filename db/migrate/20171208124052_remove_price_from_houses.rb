class RemovePriceFromHouses < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :price, :integer
  end
end
