class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :category
      t.string :address
      t.integer :post_code
      t.string :city
      t.string :country
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
