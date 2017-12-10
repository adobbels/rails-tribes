class RemovePlanidFromHouses < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :planid, :integer
  end
end
