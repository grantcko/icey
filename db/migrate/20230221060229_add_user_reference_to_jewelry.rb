class AddUserReferenceToJewelry < ActiveRecord::Migration[7.0]
  def change
    add_reference :jewelries, :user, null: false, foreign_key: true
  end
end
