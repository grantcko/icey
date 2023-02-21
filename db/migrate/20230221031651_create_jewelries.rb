class CreateJewelries < ActiveRecord::Migration[7.0]
  def change
    create_table :jewelries do |t|
      t.string :name
      t.text :detail
      t.integer :price

      t.timestamps
    end
  end
end
