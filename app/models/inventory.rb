# == Schema Information
#
# Table name: inventories
#
#  id          :bigint           not null, primary key
#  product_id  :bigint           not null
#  location_id :bigint           not null
#  quantity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_inventories_on_location_id  (location_id)
#  index_inventories_on_product_id   (product_id)
#
class Inventory < ApplicationRecord
  belongs_to :product
  belongs_to :location
  # belongs_to :special_economic_group
end
