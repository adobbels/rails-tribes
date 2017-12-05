class RemoveCategoryToProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :category, :string
  end
end
