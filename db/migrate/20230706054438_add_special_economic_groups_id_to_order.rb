class AddSpecialEconomicGroupsIdToOrder < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :special_economic_group, null: false, foreign_key: true
  end
end
