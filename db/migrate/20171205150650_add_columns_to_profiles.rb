class AddColumnsToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :phone_number, :integer
    add_column :profiles, :birthday, :date
  end
end
