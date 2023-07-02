class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.references :location, null: false, foreign_key: true
      t.string :first_name
      t.string :second_name
      t.string :role, null: false, foreign_key: true


      t.timestamps
    end
  end
end
