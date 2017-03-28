class AddReferencetoProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :profile, foreign_key: true
  end
end
