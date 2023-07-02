class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :type
      t.integer :date
      t.integer :amount_paid
      t.string :payment_code
      t.string :status

      t.timestamps
    end
  end
end
