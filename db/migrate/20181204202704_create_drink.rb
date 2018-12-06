class CreateDrink < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :type
      t.string :base
      t.integer :price
    end
  end
end
