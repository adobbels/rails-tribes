class AddPriceToHouses < ActiveRecord::Migration[5.1]
  def change
    add_monetize :houses, :price, currency: { present: false }
  end
end
