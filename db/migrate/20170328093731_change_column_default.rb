class ChangeColumnDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :rentals, :confirmed, false
  end
end
