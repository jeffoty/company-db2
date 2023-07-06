# == Schema Information
#
# Table name: orders
#
#  id                        :bigint           not null, primary key
#  product_id                :string
#  type                      :string
#  date                      :integer
#  amount_paid               :integer
#  payment_code              :string
#  status                    :string
#  quantity                  :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  special_economic_group_id :bigint           not null
#
# Indexes
#
#  index_orders_on_special_economic_group_id  (special_economic_group_id)
#
require 'rails_helper'

RSpec.describe Order, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
