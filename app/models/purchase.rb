# == Schema Information
#
# Table name: purchases
#
#  id         :bigint           not null, primary key
#  order_id   :integer
#  product_id :integer
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Purchase < ApplicationRecord
    belongs_to :order
    belongs_to :product
end
