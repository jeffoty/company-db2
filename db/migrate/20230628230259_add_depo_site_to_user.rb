class AddDepoSiteToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :depo_site, null: false, foreign_key: true
  end
end
