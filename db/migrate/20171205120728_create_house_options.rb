class CreateHouseOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :house_options do |t|
      t.text :optional_description
      t.references :house, foreign_key: true
      t.references :feature, foreign_key: true

      t.timestamps
    end
  end
end
