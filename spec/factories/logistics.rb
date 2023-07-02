# == Schema Information
#
# Table name: logistics
#
#  id              :bigint           not null, primary key
#  order_id        :bigint           not null
#  tracking_number :integer
#  shiping_date    :integer
#  reciving_date   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_logistics_on_order_id  (order_id)
#
FactoryBot.define do
  factory :logistic do
    order { nil }
  end
end
