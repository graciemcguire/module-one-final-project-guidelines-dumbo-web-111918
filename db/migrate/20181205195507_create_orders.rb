class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :patron
      t.string :drink
      t.integer :price
    end
  end
end
