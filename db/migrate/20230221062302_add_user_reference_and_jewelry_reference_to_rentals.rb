class AddUserReferenceAndJewelryReferenceToRentals < ActiveRecord::Migration[7.0]
  def change
    add_reference :rentals, :user, null: false, foreign_key: true
    add_reference :rentals, :jewelry, null: false, foreign_key: true
  end
end
