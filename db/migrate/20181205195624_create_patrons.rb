class CreatePatrons < ActiveRecord::Migration[5.0]
  def change
    create_table :patrons do |t|
      t.string :name
      t.string :favorite_drink
      t.integer :tab
    end
  end
end
