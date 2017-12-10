class AddPlanidToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :planid, :string
  end
end
