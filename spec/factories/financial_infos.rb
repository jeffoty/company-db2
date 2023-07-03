# == Schema Information
#
# Table name: financial_infos
#
#  id               :bigint           not null, primary key
#  order_id         :bigint           not null
#  transaction_type :string
#  amount           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_financial_infos_on_order_id  (order_id)
#
FactoryBot.define do
  factory :financial_info do
    location { nil }
  end
end
