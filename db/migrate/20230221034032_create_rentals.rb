class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.string :status
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
