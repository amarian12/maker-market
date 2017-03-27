class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.string :description
      t.references :rental, foreign_key: true

      t.timestamps
    end
  end
end
