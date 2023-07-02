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
require 'rails_helper'

RSpec.describe Logistic, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
