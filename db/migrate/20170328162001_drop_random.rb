class DropRandom < ActiveRecord::Migration[5.0]
  def change
  	drop_table :random_tables
  end
end
