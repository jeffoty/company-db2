# == Schema Information
#
# Table name: sales
#
#  id                        :bigint           not null, primary key
#  sale_date                 :date
#  sale_amount               :integer
#  special_economic_group_id :bigint           not null
#  order_id                  :bigint           not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#
# Indexes
#
#  index_sales_on_order_id                   (order_id)
#  index_sales_on_special_economic_group_id  (special_economic_group_id)
#
FactoryBot.define do
  factory :sale do
    sale_date { "2023-07-02" }
    sale_amount { 1 }
    special_economic_group { nil }
    order { nil }
  end
end
