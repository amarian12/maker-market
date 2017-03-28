class RemoveReferenceFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_reference :products, :user, foreign_key: true
  end
end
