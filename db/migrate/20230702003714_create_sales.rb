class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.date :sale_date
      t.integer :sale_amount
      t.references :special_economic_group, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
