class ChangeRentalColumnDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :rentals, :confirmed, nil
  end
end
