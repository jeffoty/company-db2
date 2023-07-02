class CreateLogistics < ActiveRecord::Migration[7.0]
  def change
    create_table :logistics do |t|
      t.references :order, null: false, foreign_key: true
      t.integer :tracking_number
      t.integer :shiping_date
      t.integer :reciving_date

      t.timestamps
    end
  end
end
