class ChangeRentalsStatus < ActiveRecord::Migration[7.0]
  def change
    change_column :rentals, :status, :integer, default: 0, using: 'status::integer'
  end
end
