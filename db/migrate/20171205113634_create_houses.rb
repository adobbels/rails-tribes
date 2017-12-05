class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.integer :price
      t.integer :capacity
      t.text :description
      t.string :photos
      t.string :address
      t.string :post_code
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
