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
require 'rails_helper'

RSpec.describe FinancialInfo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
