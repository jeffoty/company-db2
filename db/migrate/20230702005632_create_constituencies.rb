class CreateConstituencies < ActiveRecord::Migration[7.0]
  def change
    create_table :constituencies do |t|
      t.string :name
      t.references :depo_site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
