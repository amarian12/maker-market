class DeleteColumnsFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :name, :string
    remove_column :users, :location, :string
    remove_column :users, :description, :string
    remove_column :users, :photo, :string
  end
end
