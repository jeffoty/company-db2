class CreateSpecialEconomicGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :special_economic_groups do |t|
      t.string :name
      t.integer :group_leader_id
      t.integer :group_size
      t.references :order, null: false, foreign_key: true
      t.references :ward, null: false, foreign_key: true

      t.timestamps
    end
  end
end
