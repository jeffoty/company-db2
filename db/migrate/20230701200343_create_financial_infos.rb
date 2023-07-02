class CreateFinancialInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :financial_infos do |t|
      t.references :location, null: false, foreign_key: true
      t.integer :invoice_number
      t.string :transaction_type
      t.string :amount

      t.timestamps
    end
  end
end
