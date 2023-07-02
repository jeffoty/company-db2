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
FactoryBot.define do
  factory :purchase do
    order_id { 1 }
    product_id { 1 }
    quantity { 1 }
  end
end
