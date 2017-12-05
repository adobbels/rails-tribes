class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :content_review
      t.string :title_review
      t.integer :rating
      t.references :profile, foreign_key: true
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
